@echo off
setlocal EnableExtensions

REM === Adjust if your container name / creds differ ===
set "CONTAINER=pg16"
set "PGUSER=postgres"
set "PGPASS=postgres"
set "DBNAME=neogis"

REM === Paths ===
set "CONTAINER_BACKUP=/backup/neogis.backup"
set "HOST_BACKUP_DIR=.\backup-from-container"

REM === Make sure host folder exists ===
if not exist "%HOST_BACKUP_DIR%" (
  mkdir "%HOST_BACKUP_DIR%"
)

REM === Timestamp for filename ===
for /f "tokens=1-4 delims=/- " %%a in ('date /t') do (
  set yyyy=%%d
  set mm=%%b
  set dd=%%c
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
  set hh=%%a
  set min=%%b
)
set hh=%hh: =0%
set timestamp=%yyyy%-%mm%-%dd%_%hh%-%min%

set "HOST_BACKUP_FILE=%HOST_BACKUP_DIR%\%DBNAME%_%timestamp%.backup"

echo.
echo [1/2] Dumping database inside container...
docker exec -i "%CONTAINER%" bash -lc "export PGPASSWORD='%PGPASS%' && pg_dump -U %PGUSER% -Fc %DBNAME% -f '%CONTAINER_BACKUP%'" || (
  echo Backup failed inside container.
  exit /b 1
)

echo.
echo [2/2] Copying backup to host...
docker cp "%CONTAINER%:%CONTAINER_BACKUP%" "%HOST_BACKUP_FILE%" || (
  echo Copy failed.
  exit /b 1
)

echo.
echo Done. Backup saved to %HOST_BACKUP_FILE%
pause
