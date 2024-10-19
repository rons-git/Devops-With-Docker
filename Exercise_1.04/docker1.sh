#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.4.T1: Missing Dependencies"
# special instructions:
arg2="siWhen you see the message sh: #: curl: not found
1. Open a 2nd Terminal and press ./docker2.sh
2. When you see a block of html code in the 1st Terminal, press Ctrl-C"
# show result commands:
arg3="srdocker run -it --name lister ubuntu sh -c 'website=helsinki.fi; while true; do
echo Searching for \$website ..; sleep 1; curl http://\$website; sleep 30; done'"
arg4="bux"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"

