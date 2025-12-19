#!/bin/bash
# This script greets a user by name and welcomes them to DevOps automation.

set -euo pipefail

# Check if a name argument is provided
if [ $# -lt 1 ]; then
    echo "Usage: $0 <name>"
    exit 1
fi

NAME=$1

echo "Hello $NAME, Welcome to DevOps automation"