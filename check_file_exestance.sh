#!/bin/bash
set -euo pipefail

if [ $# -ne 1]
then 
    echo "Usage : $0 <file Name>"
fi

FILE=$1

if [ -f "$FILE" ]
then
    echo "$FILE available in home directory"
else
    echo "$FILE is not available in home directory"
fi