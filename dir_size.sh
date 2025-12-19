#!/bin/bash 
# This script calculates and displays the size of a given directory.

set -euo pipefail

# Check if a directory argument is provided
if [ $# -lt 1 ]; then
    echo "Usage: $0 <dir>"
    exit 1
fi

DIR="$1"

# Check if the provided path is a directory
if [ ! -d "$DIR" ]; then
    echo "Error : Directory $DIR does not exist"
    exit 1
fi

# Calculate the size of the directory
SIZE=$(du -sh $DIR | awk '{print $1}')

echo "Given Directory size is : $SIZE"