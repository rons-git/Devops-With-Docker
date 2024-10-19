#!/bin/bash
pardir="$(dirname "$PWD")"
# banner:
arg1="bnExercise 1.5: Sizes of Images"
# special instructions:
arg2="siWhen you see the Secret Message, Press Ctrl-C to Terminate the Container"
# build and run commands:
arg3="brdocker pull devopsdockeruh/simple-web-service:ubuntu
docker pull devopsdockeruh/simple-web-service:alpine
docker run -dit --name looper devopsdockeruh/simple-web-service:alpine"
# show result commands:
arg4="srdocker image ls
docker exec looper tail -f ./text.log | grep -i secret"
# execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
