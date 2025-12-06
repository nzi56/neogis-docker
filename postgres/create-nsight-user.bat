@echo off
echo.
echo === FINAL FIX FOR nsight USER (works even with @ in password) ===
echo.
docker exec -i pg16 psql -U postgres -c "REVOKE ALL PRIVILEGES ON DATABASE postgres FROM nsight;" 2>nul
docker exec -i pg16 psql -U postgres -c "DROP ROLE nsight;" 2>nul
docker exec -i pg16 psql -U postgres -c "CREATE ROLE nsight LOGIN SUPERUSER CREATEDB CREATEROLE BYPASSRLS PASSWORD 'nsight@Nreca'; GRANT ALL ON DATABASE postgres TO nsight;"
echo.
echo SUCCESS! nsight user recreated cleanly.
echo You can now connect from Windows with:
echo   user: nsight
echo   password: nsight@Nreca
echo   host: localhost   port: 6432
echo.
pause