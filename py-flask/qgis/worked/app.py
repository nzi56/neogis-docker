# app.py
import os
import tempfile
import traceback
from flask import Flask, request, send_file, jsonify

from qgis.PyQt.QtCore import QVariant
from qgis.core import (
    QgsApplication, QgsProject, QgsLayoutExporter,
    QgsVectorLayer, QgsFeature, QgsGeometry, QgsFields,
    QgsField, QgsCoordinateReferenceSystem, QgsRectangle
)

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
        raw = request.get_data(as_text=True)
        log(f"Raw JSON: {repr(raw)}")

        data = request.get_json(force=True)
        if not data:
            return jsonify({"error": "Invalid JSON"}), 400

        project_path = data.get('project')
        if not project_path:
            return jsonify({"error": "Missing 'project'"}), 400

        project_path = project_path.strip()
        log(f"Original path: {repr(project_path)}")

        # --- FIX: Replace double backslash ---
        project_path = project_path.replace('\\\\', '\\')
        log(f"Fixed path: {repr(project_path)}")

        # --- Normalize path ---
        project_path = os.path.normpath(project_path)
        log(f"Normalized path: {repr(project_path)}")

        # --- DEBUG: List folder ---
        folder = os.path.dirname(project_path)
        if os.path.exists(folder):
            log(f"Folder contents: {os.listdir(folder)}")
        else:
            log(f"Folder NOT found: {folder}")

        if not os.path.exists(project_path):
            return jsonify({"error": f"File not found: {project_path}"}), 400

        log(f"FILE EXISTS: {project_path}")

        # --- Parameters ---
        n_cols = int(data.get('n_cols', 4))
        m_rows = int(data.get('m_rows', 3))
        layout_name = data.get('layout', 'TiledMap')
        extent = data.get('extent')
        crs = data.get('crs', 'EPSG:3857')

        # --- QGIS ---
        qgs = QgsApplication([], False)
        qgs.initQgis()

        project = QgsProject.instance()
        if not project.read(project_path):
            qgs.exitQgis()
            return jsonify({"error": "Failed to load QGZ"}), 500

        ext = QgsRectangle(*extent) if extent else project.viewSettings().fullExtent()
        grid = create_n_m_grid(ext, n_cols, m_rows, crs)
        project.addMapLayer(grid, False)

        layout = project.layoutManager().layoutByName(layout_name)
        if not layout:
            project.removeMapLayer(grid)
            qgs.exitQgis()
            return jsonify({"error": f"Layout '{layout_name}' not found"}), 500

        atlas = layout.atlas()
        atlas.setEnabled(True)
        atlas.setCoverageLayer(grid)
        atlas.setSortExpression('$id')

        map_items = [i for i in layout.items() if i.type() == 65639]
        if not map_items:
            project.removeMapLayer(grid)
            qgs.exitQgis()
            return jsonify({"error": "No map item"}), 500
        map_items[0].setAtlasDriven(True)

        with tempfile.NamedTemporaryFile(delete=False, suffix='.pdf') as f:
            pdf_path = f.name

        exporter = QgsLayoutExporter(layout)
        result = exporter.exportToPdf(pdf_path, QgsLayoutExporter.PdfExportSettings())

        project.removeMapLayer(grid)
        qgs.exitQgis()

        if result != QgsLayoutExporter.Success:
            if os.path.exists(pdf_path):
                os.unlink(pdf_path)
            return jsonify({"error": f"Export failed: {result}"}), 500

        return send_file(pdf_path, mimetype='application/pdf', as_attachment=False)

    except Exception as e:
        log(f"ERROR: {str(e)}")
        traceback.print_exc()
        return jsonify({"error": str(e)}), 500
    finally:
        if 'pdf_path' in locals() and os.path.exists(pdf_path):
            try:
                os.unlink(pdf_path)
            except:
                pass

@app.route('/')
def home():
    return "QGIS PDF Service OK"

if __name__ == '__main__':
    log("Server starting...")
    app.run(host='0.0.0.0', port=5000, debug=False)