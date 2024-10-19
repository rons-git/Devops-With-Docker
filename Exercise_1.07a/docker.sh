#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 1.7a: Improved Curler"
#build and run commands:
arg2="brdocker build . -t lister"
#show result commands:
arg3="srdocker run -it lister helsinki.fi"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3"
