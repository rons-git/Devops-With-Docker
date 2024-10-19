#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 1.12: Hello, Frontend!"
#special instructions:
arg2="siWhen you see the line INFO Accepting connections at http://localhost:5000,
open a Browser and enter the URL localhost:5000, then press Ctrl-C three times
(you should see Exercise 1.12: Congratulations! You configured your ports correctly! on the web page)"
#copy commands:
arg3="cp$pardir/scripts/getmatapps.sh
cp -a $pardir/material-applications/example-frontend/. ./"
#build and run commands:
arg4="brdocker build . -t hello-frontend"
#show results:
arg5="srdocker run -p 5000:5000 hello-frontend"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4" "$arg5"
