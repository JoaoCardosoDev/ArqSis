#!/bin/bash

if [ "$(basename "$PWD")" != "samples" ]; then

    echo "Error: This script should be initialized inside the samples folder."

    exit 1
fi

pasta="$currentdir"




for FILE in "$pasta"*/; do
    
        name=$(basename "$FILE")
        touch "${FILE}${name}.txt"
        echo "${name}" > "${FILE}"

done

# echo "Sucess: txt files creates sucessfully"