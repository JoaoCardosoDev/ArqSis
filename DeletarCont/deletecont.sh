#!/bin/bash

if [ ! -d "script_sample_folder" ]; then 
    echo "Script sample folder not found"
    echo "Script needs to be initiated in the same folder as script_sample_folder"
    exit 1
fi

if [ $# -ne 1 ]; then
    echo "Error: Missing argument -> character"
    exit 1
fi

cd script_sample_folder


for dir in */; do

    if [[ "$dir" == *"$1"* ]] && [[ -d "$dir" ]]; then

        cd "$dir"

        for file in *; do

            if [[ "$file" == *"$1"* ]] && [ -f "$file" ]; then
                rm -f "$file"
                echo "Deleting file: $file in directory: $dir"
            fi

        done

        cd ..
    fi

done

cd ..

echo "Deletion completed"