#!/bin/bash

set -euo pipefail

for HOSTNAME in google.com facebook.com linkedin.com 8.8.8.
do 
    if ping -c 1 "$HOSTNAME" >/dev/null 2>&1
    then
        echo "$HOSTNAME is UP"
    else
        echo "$HOSTNAME is DOWN"
    fi
done