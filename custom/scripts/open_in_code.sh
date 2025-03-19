#!/bin/bash

# Loop through all selected files/folders
for FILE in "$@"; do
    # Check if the selected item is a directory
    if [ -d "$FILE" ]; then
        code "$FILE"  # Open folder in VS Code
    else
        code "$(dirname "$FILE")"  # Open the file's directory
    fi
done
