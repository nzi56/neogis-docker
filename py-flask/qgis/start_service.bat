@echo off
cd /d "E:\ng-dev\docker-dev\neogis-docker\py-flask\qgis"
call set_qgis_env.bat
"%PYTHON_EXEC%" app.py