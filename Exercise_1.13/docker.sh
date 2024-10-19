#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 1.13: Hello, Backend!"
#special instructions:
arg2="siWhen the script finishes, open a Browser and enter the URL localhost:8080/ping
(you should see the word pong on the web page)"
#copy commands:
arg3="cp$pardir/scripts/getmatapps.sh
cp -a $pardir/material-applications/example-backend/. ./"
#build and run commands:
arg4="brdocker build . -t hello-backend"
#show results:
arg5="srdocker run -dp 8080:8080 hello-backend"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4" "$arg5"
