#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 2.4"
#special instructions:
arg2="siWhen you see the line INFO Accepting connections at http://localhost:5000,
press the Press to Test! button next to Exercises 1.14 and 2.4, then press Ctrl-C
(you should see Success! Great job! next to the ✔ button next to Exercise 1.14 and
Nice! The exercise is complete! next to the ✔  button next to Exercise 2.4 on the web page)"
#copy commands:
arg3="cp$pardir/scripts/getmatapps.sh
mkdir frontend backend
cp dockerfile_fe frontend/Dockerfile
cp -a $pardir/material-applications/example-frontend/. frontend
cp dockerfile_be backend/Dockerfile
cp -a $pardir/material-applications/example-backend/. backend"
#build and run commands:
arg4="brdocker compose up"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
