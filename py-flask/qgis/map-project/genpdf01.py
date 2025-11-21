# genpdf01.py  ← FINAL VERSION FOR SPRING BOOT
import sys
import argparse
import logging
from qgis.core import (
    QgsApplication,
    QgsProject,
    QgsLayoutExporter,
    Qgis
)

# Logging for QGIS warnings/errors
logging.basicConfig(level=logging.INFO, format="%(message)s")

def log_qgis_message(message, tag, level):
    if level == Qgis.Warning:
        logging.warning(f"QGIS Warning: {message}")
    elif level == Qgis.Critical or level == Qgis.Info:
        logging.error(f"QGIS Error: {message}")

parser = argparse.ArgumentParser()
parser.add_argument("--template", required=True, help="Layout name in the .qgz")
parser.add_argument("--output", required=True, help="Full path for output PDF")
parser.add_argument("--feature", required=False, help="Atlas feature ID (optional)")
args = parser.parse_args()

# 1. Start QGIS headless
QgsApplication.setPrefixPath(r"C:\Program Files\QGIS 3.40.2\apps\qgis", True)
qgs = QgsApplication([], False)
qgs.messageLog().messageReceived.connect(log_qgis_message)
qgs.initQgis()

#  # <-- important!

# 2. Load project
project = QgsProject.instance()
success = project.read(r"E:\ng-dev\docker-dev\neogis-docker\py-flask\qgis\map-project\neogis-map.qgz")
if not success:
    print("Failed to read project file!")
    qgs.exitQgis()
    sys.exit(1)

# 3. Get layout
layout = project.layoutManager().layoutByName(args.template)
if not layout:
    print(f"Layout '{args.template}' not found! Available layouts:")
    for l in project.layoutManager().layouts():
        print("  →", l.name())
    qgs.exitQgis()
    sys.exit(1)

print(f"Using layout: {layout.name()}")

# 4. Optional: Atlas mode (if --feature is passed)
if args.feature and hasattr(layout, 'atlas'):
    atlas = layout.atlas()
    # type: ignore
    if atlas.enabled():
        atlas.setEnabled(True)
        atlas.seekTo(args.feature)   # or atlas.seekToFeatureId(int(args.feature))
        print(f"Atlas set to feature: {args.feature}")
    else:
        print("Warning: --feature given but atlas is disabled in layout")

# 5. Export PDF
settings = QgsLayoutExporter.PdfExportSettings()
settings.dpi = 300
settings.forceVectorOutput = False
settings.rasterizeWholeImage = False

exporter = QgsLayoutExporter(layout)
result = exporter.exportToPdf(args.output, settings)

if result == QgsLayoutExporter.Success:
    print(f"SUCCESS → {args.output}")
else:
    print(f"FAILED → {result}")
    qgs.exitQgis()
    sys.exit(1)

qgs.exitQgis()
print("QGIS exited cleanly")