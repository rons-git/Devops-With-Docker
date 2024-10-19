#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 2.1"
#special instructions:
arg2="siAfter you see 6 or 7 logger | Wrote text to ... text.log lines, Press Ctrl-C"
#build and run commands:
arg3="brmkdir log
touch log/text.log
docker compose up"
#show results commands:
arg4="srcat log/text.log | grep -i secret 2> /dev/null"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"

