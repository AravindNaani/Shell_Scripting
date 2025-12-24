#!/bin/bash 
set -euo pipefail

SERVICE=$1

if [ -z "$SERVICE" ]
then
    echo "Usage : $0 <Service Name>"
fi

if ! command -v systemctl >/dev/null 2>&1;
then
    echo "systemctl command is not available, required systemd"
    exit 1
fi

STATUS=$(systemctl is-active "$SERVICE" 2>/dev/null)

if [ "$STATUS" = "active" ]
then 
    echo "$SERVICE is active"
else
    echo "$SERVICE is not active"
fi