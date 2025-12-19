#!/bin/bash
# This script gathers and displays system information

set -euo pipefail

# Get the hostname of the system
hostname=$(hostname)
# Get the current user
user=$(whoami)
# Get the current date and time
date=$(date)

# Display the gathered information
echo "Host   :  $hostname"
echo "User   :  $user"
echo "Date   :  $date"