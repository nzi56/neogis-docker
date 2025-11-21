# genpdf01.py  ← Enhanced with logging to debug QImage warnings
import sys
import logging
from qgis.core import (
    QgsApplication,
    QgsProject,
    QgsLayoutExporter,
    Qgis
)

# Set up logging to capture QGIS warnings
logging.basicConfig(level=logging.WARNING, format="%(message)s")
def log_qgis_message(message, tag, level):
    if level == Qgis.Warning:
        logging.warning(f"QGIS Warning: {message}")
    elif level == Qgis.Critical:
        logging.error(f"QGIS Error: {message}")

# 1. Headless QGIS
QgsApplication.setPrefixPath(r"C:\Program Files\QGIS 3.40.2\apps\qgis", True)
qgs = QgsApplication([], False)
qgs.messageLog().messageReceived.connect(log_qgis_message)
qgs.initQgis()

# 2. Load project
project = QgsProject.instance()
project.read(r"E:\ng-dev\docker-dev\neogis-docker\py-flask\qgis\map-project\neogis-map.qgz")   # ← YOUR PROJECT PATH

# 3. Get report
report = project.layoutManager().layoutByName("my-map")
if not report:
    print("Report 'my-map' not found!")
    for l in project.layoutManager().layouts():
        print("  →", l.name())
    qgs.exitQgis()
    sys.exit(1)

print(f"Found REPORT: {report.name()}")

# 4. Export with detailed settings
settings = QgsLayoutExporter.PdfExportSettings()
settings.dpi = 300
settings.rasterizeWholeImage = False  # Try True if warnings persist
settings.simplifyGeometries = False   # Preserve detail
settings.appendGeoreference = True    # Optional: for georeferenced PDFs

output_pdf = r"E:\map-pdf\my-map.pdf"
result, errors = QgsLayoutExporter.exportToPdf(report, output_pdf, settings)

if result == QgsLayoutExporter.Success:
    print(f"SUCCESS → PDF created: {output_pdf}")
else:
    print(f"FAILED: {result} | Errors: {errors}")

qgs.exitQgis()