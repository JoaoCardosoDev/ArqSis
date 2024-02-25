#!/bin/bash

if [ "$(basename "$PWD")" != "samples" ]; then

    echo "Error: This script should be initialized inside the samples folder."

    exit 1
fi

pasta="script_sample_folder"




for FILE in "$pasta"/*/; do
    
        name=$(basename "$FILE")
        touch "${pasta}/${name}/${name}.txt"
        echo "${name}" > "${pasta}/${name}/${name}.txt"

done

echo "Success: txt files creates successfully"