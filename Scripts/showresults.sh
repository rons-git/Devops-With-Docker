#!/bin/bash
resultcmds=$(echo "$1" | egrep "^[[:blank:]]*[^[:blank:]#]")
if [ ! -z "$resultcmds" ]; then
tput setaf 3 && echo "Show Results" && tput setaf 14 && set -x
eval "$resultcmds"
fi
