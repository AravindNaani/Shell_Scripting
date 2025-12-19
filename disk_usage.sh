#!/bin/bash
# This script displays the disk usage information of the root filesystem.

set -euo pipefail

# Get the disk usage percentage for the root partition
disk_usage=$(df -h / | awk 'NR==2 {print $6}' )

echo "disk_usage is : $disk_usage"