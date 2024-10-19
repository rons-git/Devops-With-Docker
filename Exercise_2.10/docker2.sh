#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 2.10 - Terminal 2"
#build and run commands:
arg2="srdocker run -it --rm --network host networkstatic/nmap localhost"
# disable docker scrub
arg3="ndx"
# disable file scrub
arg4="nfx"
# disable file displays
arg5="dsx"
# disable backup
arg6="bux"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4" "$arg5" "$arg6"
