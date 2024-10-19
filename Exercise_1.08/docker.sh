#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.8: Two Line Dockerfile"
# special instructions:
arg2="siWhen you see the line [GIN-debug] ... :8080, Press Ctrl-C"
# build and run commands:
arg3="brdocker build . -t web-server"
# show result commands:
arg4="srdocker run web-server"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
