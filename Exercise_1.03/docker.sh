#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.3: Secret Message"
# special instructions:
arg2="siWhen you see the Secret Message, Press Ctrl-C to Terminate the Container"
# build and run commands:
arg3="brdocker run -dit --name looper devopsdockeruh/simple-web-service:ubuntu"
# show result commands:
arg4="srdocker exec looper tail -f ./text.log | grep -i secret"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"

