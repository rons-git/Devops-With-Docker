#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 2.8"
#special instructions:
arg2="siWhen you see the line INFO Accepting connections at http://localhost:5000, open
a browser and type localhost as the URL.  Then, press the Press to Test! button 
next to Exercise 2.8 and press Ctrl-C (you should see Nice! The exercise is 
complete! next to the ✔  button next to Exercise 2.8)."
#copy commands:
arg3="cp$pardir/scripts/getmatapps.sh
mkdir frontend backend
cp dockerfile_fe frontend/Dockerfile
cp -a $pardir/material-applications/example-frontend/. frontend
cp dockerfile_be backend/Dockerfile
cp -a $pardir/material-applications/example-backend/. backend
cp docker_nginx.conf nginx.conf"
#build and run commands:
arg4="brdocker compose up"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
