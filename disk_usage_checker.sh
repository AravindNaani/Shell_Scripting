#!/bin/bash

set -euo pipefail

DISK_USAGE=$(df -h / | awk  'NR==2 {gsub("%","",$5); print $5}')

if [ "$DISK_USAGE" -ge 90 ]
then 
    echo "[CRITICAL] : Disk Usage is $DISK_USAGE - VERY HIGH"
elif [ "$DISK_USAGE" -gt 80 ]
then 
    echo "[WARNING] : Disk Usage is $DISK_USAGE - HIGH"
else
    echo "[OK] : Disk Usage is $DISK_USAGE - OK"
fi