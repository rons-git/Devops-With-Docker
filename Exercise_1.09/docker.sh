#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.9: Volumes"
# special instructions:
arg2="siAfter you see 6 or 7 Wrote text to ... text.log lines, Press Ctrl-C"
# build and run commands:
arg3="brtouch text.log
docker run -v "./text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service"
# show result commands:
arg4="srcat text.log | grep -i secret"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
