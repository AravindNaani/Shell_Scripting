#!/bin/bash
set -euo pipefail

if [ $# -ne 2 ]
then 
    echo "Usage : $0 <file Name>"
fi

FILE=$1
FILE_PATH=$2

if [ ! -d "$FILE_PATH" ]
then
    echo "[ERROR] Directory $FILE_PATH is not exists"
    exit 1
fi

IS_FILE_FOUND=$(find "$FILE_PATH" -type f -name "$FILE" 2>/dev/null)

if [ -n "IS_FILE_FOUND" ]
then
    echo "[OK] $FILE available in $FILE_PATH directory"
    exit 0
else
    echo "[ERROR] $FILE is not available in $FILE_PATH directory"
    exit 1
fi