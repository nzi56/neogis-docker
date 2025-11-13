import os
import sys
import datetime

from flask import Flask, request, jsonify
from flask_cors import CORS  # <-- NEW: CORS support

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
LAYOUT_NAME = "TiledMap"

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

# Enable CORS for Angular dev server (http://localhost:4200)
# For quick dev you can also do: CORS(app)  to allow all origins.
CORS(app, origins=["http://localhost:4200"])


@app.route("/health", methods=["GET"])
def health():
    """Simple health check."""
    return jsonify({"status": "ok"}), 200


@app.route("/print-grid", methods=["POST"])
def print_grid():
    """
    Request body JSON:
      {
        "rows": 2,
        "cols": 3
      }

    rows, cols represent your n x m grid.
    Currently they are used in the filename and available
    if you later want to drive layout variables.
    """
    # Parse JSON body
    try:
        data = request.get_json(force=True) or {}
    except Exception:
        return jsonify({"status": "error", "message": "Invalid JSON body"}), 400

    # Default to 1x1 if not provided
    try:
        rows = int(data.get("rows", 1))
        cols = int(data.get("cols", 1))
    except (ValueError, TypeError):
        return jsonify({"status": "error", "message": "rows and cols must be integers"}), 400

    # Get layout from project
    layout_manager = project.layoutManager()
    layout = layout_manager.layoutByName(LAYOUT_NAME)

    if layout is None:
        return jsonify({
            "status": "error",
            "message": f"Layout '{LAYOUT_NAME}' not found in project."
        }), 500

    # ---- OPTIONAL: use rows/cols as layout variables in QGIS (advanced) ----
    # context = layout.context()
    # context.setVariable("grid_rows", rows)
    # context.setVariable("grid_cols", cols)
    # Then in QGIS Layout Designer, use @grid_rows / @grid_cols in expressions.

    # Timestamped filename: yyyy-mm-dd-hh-mi-ss
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d-%H-%M-%S")
    filename = f"tiledmap-{rows}x{cols}-{timestamp}.pdf"

    os.makedirs(OUTPUT_DIR, exist_ok=True)
    output_path = os.path.join(OUTPUT_DIR, filename)

    exporter = QgsLayoutExporter(layout)
    pdf_settings = QgsLayoutExporter.PdfExportSettings()

    # Export to PDF
    result = exporter.exportToPdf(output_path, pdf_settings)

    if result != QgsLayoutExporter.Success:
        return jsonify({
            "status": "error",
            "message": f"QGIS export failed with code: {result}"
        }), 500

    return jsonify({
        "status": "ok",
        "rows": rows,
        "cols": cols,
        "layout": LAYOUT_NAME,
        "file_name": filename,
        "full_path": output_path
    }), 200


if __name__ == "__main__":
    try:
        # Angular will call http://127.0.0.1:5000/print-grid from http://localhost:4200
        app.run(host="127.0.0.1", port=5000, debug=True)
    finally:
        # Clean up QGIS when the server stops
        qgs.exitQgis()
