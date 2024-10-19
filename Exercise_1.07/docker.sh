#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.7: Image for Script"
# special instructions:
arg2="siWhen you see a block of html code, press Ctrl-C"
# build and run commands:
arg3="brdocker build . -t lister"
# show result commands:
arg4="srdocker run -it lister"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
