#!/bin/bash

set -euo pipefail

for HOSTNAME in google.com facebook.com linkedin.com
do 
    local STATUS=$(ping -c 1 $HOSTNAME)
    if [ -n $STATUS ]
    then
        echo "$HOSTNAME is UP"
    else
        echo "$HOSTNAME is DOWN"
    fi
done