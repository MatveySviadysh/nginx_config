#!/bin/bash

RED_DIR="/var/www/red"
BLUE_DIR="/var/www/blue"

if [[ ! -d "$RED_DIR" && ! -d "$BLUE_DIR" ]]; then
    cp -r ./red/ "$RED_DIR"
    cp -r ./blue/ "$BLUE_DIR"

    if [[ $? -eq 0 ]]; then
        echo "successful"
    else
        echo "copy error"
    fi
else
    echo "Directory $RED_DIR or $BLUE_DIR already exists"
fi
