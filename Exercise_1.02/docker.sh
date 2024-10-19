#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.2: Cleanup"
# show result commands:
arg2="srdocker ps -a"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2"

