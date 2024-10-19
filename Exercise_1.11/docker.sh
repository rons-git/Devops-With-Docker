#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.11: Spring"
# special instructions:
arg2="siOnce you see the Spring banner, wait until the terminal stops displaying lines, then open a Browser and enter the 
URL localhost:8080. Press the button Press here, then press Ctrl-C (you should see Success under the button on the web page)"
# copy commands:
arg3="cp$pardir/scripts/getmatapps.sh
cp -a $pardir/material-applications/spring-example-project/. ./"
# build and run commands:
arg4="brdocker build . -t spring-project"
# show results:
arg5="srdocker run -p 8080:8080 spring-project"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4" "$arg5"
