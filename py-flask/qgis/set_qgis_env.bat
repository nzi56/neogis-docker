@echo off
:: === QGIS 3.40.2 - FULLY SAFE ===
set "QGIS_PREFIX=C:\Program Files\QGIS 3.40.2"

:: Expand paths
set "QGIS_BIN=%QGIS_PREFIX%\bin"
set "QGIS_PYTHON=%QGIS_PREFIX%\apps\Python39"
set "QGIS_QGIS=%QGIS_PREFIX%\apps\qgis"

:: Environment
set "PYTHONHOME=%QGIS_PYTHON%"
set "PYTHONPATH=%QGIS_QGIS%\python;%QGIS_QGIS%\python\plugins;%PYTHONPATH%"
set "PATH=%QGIS_PYTHON%\Lib\site-packages;%QGIS_PYTHON%;%QGIS_BIN%;%PATH%"
set "QT_QPA_PLATFORM=offscreen"
set "GDAL_DATA=%QGIS_QGIS%\share\gdal"
set "PROJ_LIB=%QGIS_QGIS%\share\proj"

:: Executable
set "PYTHON_EXEC=%QGIS_BIN%\python-qgis.bat"

echo QGIS Environment Loaded