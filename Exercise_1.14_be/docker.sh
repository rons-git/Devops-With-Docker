#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.14: Environment - Backend"
# copy commands:
arg2="cp$pardir/scripts/getmatapps.sh
cp -a $pardir/material-applications/example-backend/. ./"
# build and run commands:
arg3="brdocker build . -t hello-backend"
# show results:
arg4="srdocker run -dp 8080:8080 hello-backend"
# diable backups
arg5="bux"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4" "$arg5"
