#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.4.T2: Missing Dependencies"
# no dockerscrub:
arg2="ndx"
# no filescrub:
arg3="nfx"
# build and run commands:
arg4="brdocker exec -it lister bash -c 'apt-get -y update; apt-get -y install curl'"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"

