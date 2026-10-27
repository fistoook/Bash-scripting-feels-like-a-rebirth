#!/bin/bash

for file in ./*; do
    if [[ -f "$file" ]]; then
        echo "file: $file"
    elif [[ -d "$file" ]]; then
        echo "directory: $file"
    else
        echo "unknown: $file"
    fi
done

