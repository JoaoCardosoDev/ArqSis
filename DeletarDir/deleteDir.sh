#!/bin/bash

if [ ! -d "script_sample_folder" ]; then 
    echo "Script sample folder not found"
    echo "Script needs to be initiated in the same folder as script_sample_folder"
    exit 1
fi

echo "Deletion script initiated..."

cd script_sample_folder

read -p "Select option: Would you like to delete every dir in script_sample_folder(1) or only the empty ones(2)?" answer

if [[ "$answer" =~ [1] ]]; then
    echo "Deleting all directories..."
    find . -mindepth 1 -type d -exec rm -r {} +
elif [[ "$answer" =~ [2] ]]; then
    echo "Deleting empty directories..."
    find . -type d -empty -delete
else
    echo "Invalid choice. Script exiting."
    cd ..
    exit 1
fi

cd ..

echo "Deletion completed."