#!/bin/bash
# This script checks if a given systemd service is active and reports its status.

set -euo pipefail

# Check if a service name argument is provided
if [ $# -lt 1 ]; then 
    echo "Usage: $0 <Service Name>"
    exit 1
fi

SERVICE="$1"

# Check if systemctl command is available
if ! command -v systemctl >/dev/null 2>&1; then
    echo "Error: systemctl command not found. This script requires systemd."
    exit 1
fi

# Get the status of the service
STATUS=$(systemctl is-active "$SERVICE" 2>/dev/null || true )

# Report the status
if [ "$STATUS" = "active" ]; then 
    echo "$SERVICE is running"
else
    echo "$SERVICE is not running"
fi