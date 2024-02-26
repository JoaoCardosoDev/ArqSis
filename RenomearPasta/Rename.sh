#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Missing prefix"
    exit 1
fi

if [ ! -d "script_sample_folder" ]; then 
    echo "Script sample folder not found"
    echo "Script needs to be initiated in the same folder as script_sample_folder"
    exit 1
fi

input=$1

for file in script_sample_folder/*; do
    if [ -d "$file" ]; then 
        mv "$file" "script_sample_folder/$input-$(basename "$file")"
    fi
done

echo "Renaming completed"