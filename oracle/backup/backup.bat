docker exec oracle-free rm -f "/opt/oracle/admin/FREE/dpdump/44E0E39BCB25023BE063020016ACA0EC/sferp-exp.dmp"
docker exec oracle-free expdp system/mnzryv@//localhost:1521/xepdb1  directory=DATA_PUMP_DIR   dumpfile=sferp-exp.dmp  schemas=sferp   content=all 
docker cp oracle-free:/opt/oracle/admin/FREE/dpdump/44E0E39BCB25023BE063020016ACA0EC/sferp-exp.dmp   E:\ng-dev\docker-dev\neogis-docker\oracle\backup\sferp-exp.dmp

pause