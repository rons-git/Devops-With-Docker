#!/bin/bash
# If files other docker* exist ...
if [ "$(find . -iname "Docker*" -type f | wc -l)" -gt 0 ]; then
    tput setaf 3 && echo "Remove All Files and Directories (except docker* files)" && tput setaf 8 && set -x
    # Remove all files except docke* files
    find . ! -iname 'Docker*' -type f -exec rm -f {} +
    # Remove all subdirectories
    rm -r -- */ &> /dev/null
    dir
fi
