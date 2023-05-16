#!/bin/bash

# get the directory of this script
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

DIRS_TO_DELETE=(
    "${SCRIPT_DIR}/data"
    "${SCRIPT_DIR}/portainer_data"
    "${SCRIPT_DIR}/logs"
    "${SCRIPT_DIR}/letsencrypt"
)

for dir in "${DIRS_TO_DELETE[@]}"; do
    if [ -d "$dir" ]; then
        # prompt user to confirm deletion
        read -p "Delete $dir? [y/N] " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Skipping $dir"
            continue
        fi
        echo "Deleting $dir"
        rm -rf "$dir"
    fi
done
