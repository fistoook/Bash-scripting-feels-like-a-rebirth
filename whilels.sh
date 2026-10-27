#!/bin/bash

files_arr=(./*) # array of files
len_arr="${#files_arr[@]}" #len of array

i=0

while [[ i -lt len_arr ]]; do
    file=${files_arr[i]}
    if [[ -f "$file" ]]; then
        echo "file: $file"
    elif [[ -d "$file" ]]; then
        echo "directory: $file"
    else
        echo "unknown: $file"
    fi
    i=$(( i+1 ))
done
