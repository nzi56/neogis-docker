# app.py
import os
import io
import traceback
from flask import Flask, request, Response, jsonify

from qgis.core import (
    QgsApplication, QgsProject, QgsLayoutExporter,
    QgsVectorLayer, QgsFeature, QgsGeometry, QgsFields,
    QgsField, QgsCoordinateReferenceSystem, QgsRectangle
)
from qgis.PyQt.QtCore import QVariant

# SINGLETON QGIS APP
qgs = None

def init_qgis():
    global qgs
    if qgs is None:
        qgs = QgsApplication([], False)
        qgs.initQgis()
        print("[QGIS] Initialized (singleton)")

def cleanup_qgis():
    global qgs
    if qgs is not None:
        try:
            qgs.exitQgis()
            print("[QGIS] Cleaned up")
        except:
            pass
        qgs = None

app = Flask(__name__)

def log(msg):
    print(f"[QGIS] {msg}")

def create_n_m_grid(extent, n_cols, m_rows, crs_authid):
    fields = QgsFields()
    fields.append(QgsField('id', QVariant.Int))
    vl = QgsVectorLayer(f'Polygon?crs={crs_authid}', 'grid', 'memory')
    pr = vl.dataProvider()
    pr.addAttributes(fields)
    vl.updateFields()

    w = (extent.xMaximum() - extent.xMinimum()) / n_cols
    h = (extent.yMaximum() - extent.yMinimum()) / m_rows

    feats = []
    fid = 1
    for row in range(m_rows):
        for col in range(n_cols):
            x = extent.xMinimum() + col * w
            y = extent.yMinimum() + row * h
            rect = QgsRectangle(x, y, x + w, y + h)
            f = QgsFeature(vl.fields())
            f.setAttribute('id', fid)
            f.setGeometry(QgsGeometry.fromRect(rect))
            feats.append(f)
            fid += 1
    pr.addFeatures(feats)
    vl.updateExtents()
    return vl

@app.route('/generate_grid', methods=['POST'])
def generate_grid():
    try:
        init_qgis()  # Ensure QGIS is ready

        raw = request.get_data(as_text=True)
        log(f"Raw JSON: {repr(raw)}")

        data = request.get_json(force=True)
        if not data:
            return jsonify({"error": "Invalid JSON"}), 400

        project_path = data.get('project')
        if not project_path or not os.path.exists(project_path):
            return jsonify({"error": "File not found"}), 400

        n_cols = int(data.get('n_cols', 4))
        m_rows = int(data.get('m_rows', 3))
        layout_name = data.get('layout', 'TiledMap')
        extent = data.get('extent')
        crs = data.get('crs', 'EPSG:3857')

        project = QgsProject.instance()
        if not project.read(project_path):
            return jsonify({"error": "Failed to load QGZ"}), 500

        ext = QgsRectangle(*extent) if extent else project.viewSettings().fullExtent()
        grid = create_n_m_grid(ext, n_cols, m_rows, crs)
        project.addMapLayer(grid, False)

        layout = project.layoutManager().layoutByName(layout_name)
        if not layout:
            project.removeMapLayer(grid)
            return jsonify({"error": "Layout not found"}), 500

        atlas = layout.atlas()
        atlas.setEnabled(True)
        atlas.setCoverageLayer(grid)
        atlas.setSortExpression('$id')

        map_items = [i for i in layout.items() if i.type() == 65639]
        if not map_items:
            project.removeMapLayer(grid)
            return jsonify({"error": "No map item"}), 500
        map_items[0].setAtlasDriven(True)

        # CORRECT EXPORT TO MEMORY
        settings = QgsLayoutExporter.PdfExportSettings()
        settings.dpi = 300

        pdf_bytes = io.BytesIO()
        exporter = QgsLayoutExporter(layout)
        result = exporter.exportToPdf(pdf_bytes, settings)

        project.removeMapLayer(grid)

        if result != QgsLayoutExporter.Success:
            log(f"Export failed: {result}")
            return jsonify({"error": "Export failed"}), 500

        pdf_bytes.seek(0)
        pdf_data = pdf_bytes.getvalue()
        log(f"PDF size: {len(pdf_data)} bytes")

        if len(pdf_data) < 1000:
            return jsonify({"error": "PDF too small"}), 500

        return Response(
            pdf_data,
            mimetype='application/pdf',
            headers={'Content-Disposition': 'inline; filename=grid.pdf'}
        )

    except Exception as e:
        log(f"ERROR: {str(e)}")
        traceback.print_exc()
        return jsonify({"error": str(e)}), 500

@app.route('/health')
def health():
    return "OK"

@app.teardown_appcontext
def cleanup(exception=None):
    cleanup_qgis()

if __name__ == '__main__':
    log("Server starting...")
    try:
        app.run(host='0.0.0.0', port=5000, debug=False, threaded=True)
    finally:
        cleanup_qgis()