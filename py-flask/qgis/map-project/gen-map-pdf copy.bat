@echo off
"C:\Program Files\QGIS 3.40.2\bin\python-qgis.bat" ^
"E:\ng-dev\docker-dev\neogis-docker\py-flask\qgis\map-project\genpdf01.py" ^
--template "my-map" ^
--output "C:\temp\report.pdf"

echo Done!
pause

"C:\Program Files\QGIS 3.40.2\bin\python-qgis.bat" "generate_report.py" --template "my-map" --output "C:/temp/map-report-20251121-143012345.pdf" 
