#!/bin/bash
# Move $1 to $instructions and strip comments from variable
instructions=$(echo "$1" | egrep "^[[:blank:]]*[^[:blank:]#]")
# If instructions variable is not empty ...
if [ ! -z "$instructions" ]; then
    tput setaf 3 && echo -n "*** Special Script Instructions ***" && tput setaf 15 && tput setab 1 && echo
    echo "$instructions"
    tput setab 0
    for i in {1..5}; do wait; done
    echo
fi
