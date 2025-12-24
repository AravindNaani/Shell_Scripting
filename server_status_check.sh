#!/bin/bash

set -euo pipefail

for HOSTNAME in google.com facebook.com linkedin.com
do 
    STATUS=$(ping -c 1 $HOSTNAME)
    if [ "$?" -eq 0 ]
    then
        echo "$HOSTNAME is UP"
    else
        echo "$HOSTNAME is DOWN"
    fi
done