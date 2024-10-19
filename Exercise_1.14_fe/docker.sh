#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 1.14: Environmeent - Frontend"
#special instructions:
arg2="si*** Run the backend script before running this script ***
When you see the line INFO Accepting connections at http://localhost:5000,
press the Press to Test! button next to Exercise 1.14, then press Ctrl-C three times
(you should see Success! Great job! next to the ✔ button next to Exercise 1.14 on the web page)"
#no dockerscrub:
arg3="ndx"
#copy commands:
arg4="cpcp -a $pardir/material-applications/example-frontend/. ./"
#build and run commands:
arg5="brdocker build . -t hello-frontend
docker run -p 5000:5000 hello-frontend"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4" "$arg5"
