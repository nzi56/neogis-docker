# -*- coding: utf-8 -*-
import sys
import os
from qgis.core import (
    QgsApplication, QgsProject, QgsLayoutExporter,
    QgsVectorLayer, QgsFeature, QgsGeometry, QgsFields,
    QgsField, QgsCoordinateReferenceSystem, QgsRectangle
)
from qgis.core import QVariant

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


def export_atlas(project_path, layout_name, n_cols, m_rows, out_dir, extent=None, crs='EPSG:3857'):
    # ---- Headless QGIS ----
    qgs = QgsApplication([], False)
    qgs.initQgis()

    # Load project
    proj = QgsProject.instance()
    if not proj.read(project_path):
        raise RuntimeError(f"Cannot read {project_path}")

    # Extent
    if extent is None:
        extent = proj.viewSettings().fullExtent()
    else:
        # extent comes as list [xmin,ymin,xmax,ymax]
        extent = QgsRectangle(*extent)

    # Create grid
    grid = create_n_m_grid(extent, n_cols, m_rows, crs)
    proj.addMapLayer(grid, False)   # hide in legend

    # Layout
    lm = proj.layoutManager()
    layout = lm.layoutByName(layout_name)
    if not layout:
        raise RuntimeError(f"Layout '{layout_name}' not found")

    atlas = layout.atlas()
    atlas.setEnabled(True)
    atlas.setCoverageLayer(grid)
    atlas.setSortExpression('$id')

    # Export each page
    exporter = QgsLayoutExporter(layout)
    settings = QgsLayoutExporter.PdfExportSettings()
    os.makedirs(out_dir, exist_ok=True)

    for i in range(grid.featureCount()):
        atlas.seekTo(i)
        out_file = os.path.join(out_dir, f"tile_{i+1:03d}.pdf")
        exporter.exportToPdf(out_file, settings)

    # Clean up
    proj.removeMapLayer(grid)
    qgs.exitQgis()
    return [os.path.join(out_dir, f) for f in os.listdir(out_dir) if f.endswith('.pdf')]


# ------------------------------------------------------------------
if __name__ == '__main__':
    # Example CLI call:
    # python generate_grid_print.py "C:\gis\my.qgz" TiledMap 4 3 "C:\temp\out"
    if len(sys.argv) < 6:
        print("Usage: generate_grid_print.py <project.qgz> <layout> <n_cols> <m_rows> <out_dir> [xmin,ymin,xmax,ymax]")
        sys.exit(1)

    proj_path = sys.argv[1]
    layout = sys.argv[2]
    n = int(sys.argv[3])
    m = int(sys.argv[4])
    out_dir = sys.argv[5]
    ext = None
    if len(sys.argv) > 6:
        ext = [float(v) for v in sys.argv[6].split(',')]

    export_atlas(proj_path, layout, n, m, out_dir, ext)