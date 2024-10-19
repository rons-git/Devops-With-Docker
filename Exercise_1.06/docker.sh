#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.6: Hello Docker Hub"
# special instructions:
arg2="siWhen you see the prompt Give me the password:, type basics"
# build and run commands:
arg3="brdocker run -dit --name looper devopsdockeruh/pull_exercise"
# show result commands:
arg4="srdocker attach looper"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
