#!/bin/bash

set -euo pipefail

DISK_USAGE=$(df -h / | awk  'NR==2 {gsub("%","",$5); print $5}')

if [ "$DISK_USAGE" -ge 90 ]
then 
    echo "[CRITICAL] : Disk Usage is $DISK_USAGE - VERY HIGH"
    exit 2
elif [ "$DISK_USAGE" -gt 80 ]
then 
    echo "[WARNING] : Disk Usage is $DISK_USAGE - HIGH"
    exit 1
else
    echo "[OK] : Disk Usage is $DISK_USAGE - OK"
    exit 0
fi