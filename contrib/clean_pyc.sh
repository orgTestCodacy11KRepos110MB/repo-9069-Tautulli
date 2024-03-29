#!/usr/bin/env bash

# Display information
echo "This script will remove *.pyc files. These files are generated by Python, but they can cause conflicts after an upgrade. It's safe to remove them, because they will be regenerated."
echo "Press enter to continue, or CTRL + C to quit."
read

# Remove *.pyc files
find "`dirname $0`/.." -type f -name "*.pyc" -exec rm -rf {} \;
# Remove __pycache__ folders
find "`dirname $0`/.." -type d -name "__pycache__" -exec rm -rf {} \;