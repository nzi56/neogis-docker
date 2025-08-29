@echo off
setlocal EnableExtensions

REM === Adjust if your container name / creds differ ===
set "CONTAINER=pg16"
set "PGUSER=postgres"
set "PGPASS=postgres"
set "DBNAME=neogis"
set "CONTAINER_BACKUP=/backup/neogis.backup"

echo.
echo [1/2] Recreating database inside container...
docker exec -i "%CONTAINER%" bash -lc "export PGPASSWORD='%PGPASS%' && dropdb -U %PGUSER% --if-exists %DBNAME% && createdb -U %PGUSER% -E UTF8 -T template0 %DBNAME%" || (
  echo Database recreate failed.
  exit /b 1
)

echo.
echo [2/2] Restoring from backup...
docker exec -i "%CONTAINER%" bash -lc "export PGPASSWORD='%PGPASS%' && pg_restore -U %PGUSER% -d %DBNAME% --clean --if-exists --no-owner '%CONTAINER_BACKUP%'" || (
  echo Restore failed. If this is a plain .sql dump, see note below.
  exit /b 1
)

echo.
echo Done. Database "%DBNAME%" restored successfully.
exit /b 0
