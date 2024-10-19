#!/bin/bash
pardir="$(dirname "$PWD")"
#banner:
arg1="bnExercise 2.7"
#special instructions:
arg2="siWhen you see the line INFO Accepting connections at http://localhost:5000, open a
browser and enter localhost:5000 as the URL.  Then, press the Press to Test! button next to
Exercises 1.14, 2.4, and 2.6 (you should see Success! Great job! next to the ✔  button next
to Exercise 1.14, Nice! The exercise is complete! next to the ✔ button next to Exercise 2.4,
and Working! Messages below also work. next to the ✔  button next to Exercise 2.6 on the web
page). Next, send a Hello World! message and press Ctrl-C. When you see the line INFO 
Accepting connections at http://localhost:5000, refresh the browser and send the message The
messages are still here! (you should see both the Hello World! message and The messages are
still here message).  Press Crtl-C again, and when you see the line INFO Accepting 
connections at http://localhost:5000, refresh the browser and send the message The messages
are gone! (this should be the only message you see). Press Ctrl-C to end the script."
#copy commands:
arg3="cp$pardir/scripts/getmatapps.sh
mkdir frontend backend
cp dockerfile_fe frontend/Dockerfile
cp -a $pardir/material-applications/example-frontend/. frontend
cp dockerfile_be backend/Dockerfile
cp -a $pardir/material-applications/example-backend/. backend"
#build and run commands:
arg4="brdocker compose up
docker compose down
docker compose up
docker compose down
mv ~/bind ~/full
docker compose up
docker compose down
echo 1801 | sudo -S rm -rf ~/bind ~/full
echo"
#execute it!
$pardir/scripts/master.sh "$arg1" "$arg2" "$arg3" "$arg4"
