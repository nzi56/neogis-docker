import os
import sys
import datetime
import traceback

from flask import Flask, request, jsonify
from flask_cors import CORS
from flask import send_from_directory
# --------------------------
# QGIS SETUP (Windows)
# --------------------------
# If you run this from the OSGeo4W / QGIS shell,
# usually you don't need to change sys.path manually.
# If import fails, you may need to uncomment and adjust QGIS_PREFIX_PATH.

# Example (adjust to your QGIS installation path):
# QGIS_PREFIX_PATH = r"C:\Program Files\QGIS 3.34.0\apps\qgis"
# sys.path.append(os.path.join(QGIS_PREFIX_PATH, "python"))

from qgis.core import (
    QgsApplication,
    QgsProject,
    QgsLayoutExporter,
)

# --------------------------
# CONFIG
# --------------------------

QGIS_PROJECT_PATH = r"E:\ng-dev\docker-dev\neogis-docker\py-flask\qgis\map-project\neogis-map.qgz"
OUTPUT_DIR = r"E:\ng-dev\docker-dev\neogis-docker\py-flask\qgis\map-project"


LAYOUT_NAME = "TiledMap"   # QGIS layout name to export

# --------------------------
# INIT QGIS (headless)
# --------------------------
qgs = QgsApplication([], False)  # False = no GUI
qgs.initQgis()

project = QgsProject.instance()
if not project.read(QGIS_PROJECT_PATH):
    print(f"ERROR: Cannot read QGIS project at {QGIS_PROJECT_PATH}")
else:
    print(f"Loaded QGIS project: {QGIS_PROJECT_PATH}")

# --------------------------
# FLASK APP
# --------------------------
app = Flask(__name__)

# DEV: allow all origins (simplest way to avoid CORS issues while testing)
CORS(app)  # You can restrict later with origins=["http://localhost:4200"]


@app.route("/health", methods=["GET"])
def health():
    """Simple health check."""
    return jsonify({"status": "ok"}), 200

@app.route("/download/<path:filename>", methods=["GET"])
def download_file(filename):
    return send_from_directory(OUTPUT_DIR, filename, as_attachment=False)

@app.route("/print-grid", methods=["POST"])
def print_grid():
    """
    Export the QGIS layout exactly as QGIS does:
    - No tiling
    - No rows/cols logic
    - If the layout has multiple pages, the PDF will have those same pages.

    Angular can call this with or without a JSON body.
    Any rows/cols in the body are simply ignored.
    """
    try:
        # Try to parse JSON (optional, but we ignore its contents for now)
        try:
            _data = request.get_json(force=False, silent=True) or {}
        except Exception:
            _data = {}

        # Get layout from project
        layout_manager = project.layoutManager()
        layout = layout_manager.layoutByName(LAYOUT_NAME)

        if layout is None:
            return jsonify({
                "status": "error",
                "message": f"Layout '{LAYOUT_NAME}' not found in project."
            }), 500

        # Timestamped filename: yyyy-mm-dd-hh-mi-ss
        timestamp = datetime.datetime.now().strftime("%Y-%m-%d-%H-%M-%S")
        filename = f"{LAYOUT_NAME}-{timestamp}.pdf"

        os.makedirs(OUTPUT_DIR, exist_ok=True)
        output_path = os.path.join(OUTPUT_DIR, filename)

        exporter = QgsLayoutExporter(layout)
        pdf_settings = QgsLayoutExporter.PdfExportSettings()

        # Export to PDF (this behaves like "Export as PDF" in QGIS)
        result = exporter.exportToPdf(output_path, pdf_settings)

        if result != QgsLayoutExporter.Success:
            return jsonify({
                "status": "error",
                "message": f"QGIS export failed with code: {result}"
            }), 500

        return jsonify({
            "status": "ok",
            "layout": LAYOUT_NAME,
            "file_name": filename,
            "full_path": output_path
        }), 200

    except Exception as e:
        # Log full traceback to the console to debug real 500 causes
        traceback.print_exc()
        return jsonify({
            "status": "error",
            "message": f"Unexpected error: {str(e)}"
        }), 500


if __name__ == "__main__":
    try:
        # Angular will call http://127.0.0.1:5000/print-grid from http://localhost:4200
        app.run(host="0.0.0.0", port=5000, debug=True)
    finally:
        # Clean up QGIS when the server stops
        qgs.exitQgis()
