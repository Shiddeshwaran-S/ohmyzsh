#!/bin/bash

# Get the currently open folder in Nautilus
FOLDER_URI=$(gdbus call --session --dest org.freedesktop.FileManager1 \
    --object-path /org/freedesktop/FileManager1 \
    --method org.freedesktop.DBus.Properties.Get \
    "org.freedesktop.FileManager1" "OpenLocations")

# Extract the file path from the output
FOLDER_PATH=$(echo "$FOLDER_URI" | grep -oE "file://[^']+" | sed 's|file://||' | sed 's/%20/ /g')

# If no folder is found, open VS Code in home
if [ -z "$FOLDER_PATH" ]; then
    code ~
else
    code "$FOLDER_PATH"
fi