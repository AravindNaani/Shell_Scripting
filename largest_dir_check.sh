#!/bin/bash

set -euo pipefail

LARGEST_DIRS=$(du -h /var | sort -rh | head -n 5)

echo "$LARGEST_DIRS"