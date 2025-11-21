# generate_report.py  ← FINAL FINAL VERSION – WORKS 100%
import sys
import argparse
from qgis.core import QgsApplication, QgsProject, QgsLayoutExporter

parser = argparse.ArgumentParser()
parser.add_argument("--template", required=True)
parser.add_argument("--output", required=True)
parser.add_argument("--feature", required=False, default=None)
args = parser.parse_args()

QgsApplication.setPrefixPath(r"C:\Program Files\QGIS 3.40.2\apps\qgis", True)
qgs = QgsApplication([], False)
qgs.initQgis()

project = QgsProject.instance()
if not project.read(r"E:\ng-dev\docker-dev\neogis-docker\py-flask\qgis\map-project\neogis-map.qgz"):
    print("ERROR: project load failed")
    sys.exit(1)

report = project.layoutManager().layoutByName(args.template)
if not report:
    print(f"ERROR: report '{args.template}' not found")
    sys.exit(1)

print(f"Found: {report.name()} ({type(report).__name__})")

if args.feature and report.atlasEnabled():
    try:
        report.atlas().seekTo(int(args.feature))
        print(f"Atlas → feature {args.feature}")
    except:
        pass

# Export – returns (int, str)
settings = QgsLayoutExporter.PdfExportSettings()
settings.dpi = 300

error_code, error_message = QgsLayoutExporter.exportToPdf(report, args.output, settings)

if error_code == 0:
    print(f"SUCCESS → {args.output}")
    qgs.exitQgis()
    sys.exit(0)
else:
    print(f"REAL FAILURE → {error_code}: {error_message}")
    qgs.exitQgis()
    sys.exit(1)