#!/usr/bin/env python3

import subprocess
import os
import sys
import logging
from datetime import datetime

# Configure logging
logging.basicConfig(
    filename=f'oracle_backup_{datetime.now().strftime("%Y%m%d")}.log',
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)

# Variables
CONTAINER_NAME = "oracle-xe-21c"
BACKUP_DIR = "/opt/oracle/admin/XE/dpdump/234D871820650B69E0630F02000A8F6E"
DUMPFILE = "sferp_backup.dmp"
LOGFILE = "sferp_backup.log"
SCHEMA = "sferp"
HOST_BACKUP_DIR = "./dpump-backup"

def run_command(command, error_message):
    """Run a shell command and handle errors."""
    try:
        result = subprocess.run(command, shell=True, check=True, capture_output=True, text=True)
        logging.info(result.stdout)
        return True
    except subprocess.CalledProcessError as e:
        logging.error(f"{error_message}: {e.stderr}")
        return False

def main():
    logging.info("Starting Oracle Data Pump backup process")

    # Ensure host backup directory exists
    os.makedirs(HOST_BACKUP_DIR, exist_ok=True)

    # Step 1: Remove existing backup file in container
    logging.info("Checking and removing existing backup file")
    rm_command = f'docker exec -i {CONTAINER_NAME} bash -c "rm -f {BACKUP_DIR}/{DUMPFILE}"'
    if not run_command(rm_command, "Failed to remove existing backup file"):
        sys.exit(1)

    # Step 2: Run Data Pump Export
    logging.info(f"Running Data Pump Export for schema {SCHEMA}")
    expdp_command = (
        f'docker exec -i {CONTAINER_NAME} bash -c '
        f'"expdp system/oracle@xepdb1 directory=DATA_PUMP_DIR '
        f'dumpfile={DUMPFILE} logfile={LOGFILE} schemas={SCHEMA} version=12"'
    )
    if not run_command(expdp_command, "Data Pump Export failed"):
        sys.exit(1)

    # Step 3: Copy backup file from container to host
    logging.info("Copying backup file from container to host")
    cp_command = f'docker cp {CONTAINER_NAME}:{BACKUP_DIR}/{DUMPFILE} {HOST_BACKUP_DIR}'
    if not run_command(cp_command, "Failed to copy backup file"):
        sys.exit(1)

    # Step 4: Verify backup file on host
    backup_file_path = os.path.join(HOST_BACKUP_DIR, DUMPFILE)
    if os.path.isfile(backup_file_path):
        logging.info(f"Backup successfully copied to host: {backup_file_path}")
    else:
        logging.error("Backup file was not copied successfully")
        sys.exit(1)

    logging.info("Oracle Data Pump backup process completed successfully")

if __name__ == "__main__":
    main()