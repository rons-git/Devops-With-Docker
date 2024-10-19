#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.10: Ports Open"
# special instructions:
arg2="siWhen you see the line [GIN debug] ... :8080 , open a Browser and enter the URL localhost:3000, then press Ctrl-C
(you should see { message: \"You connected to ... } on the web page)"
# build and run commands:
arg3="brdocker run -p "3000:8080" devopsdockeruh/simple-web-service server"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3"
