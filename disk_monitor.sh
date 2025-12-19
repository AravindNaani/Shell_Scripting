#!/bin/bash

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}


set -euo pipefail

STATUS=$(df -h / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "${STATUS} %"

if [ "$STATUS" -ge 90 ]
then
    echo "[CRITICAL] : Disk Usage: ${STATUS}% - Immediate Action Required"
    exit 2
elif [ "$STATUS" -ge 80 ]
then
    echo "[WARNING] : Disk Usage: ${STATUS}% - Threshold Exceed"
    exit 1
else
    log "[OK] : Disk Usage: ${STATUS}% - OK"
    exit 0
fi