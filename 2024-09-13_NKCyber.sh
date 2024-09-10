#!/bin/bash

set -e # stop immediately on errors
set -o pipefail # do not silently ignore errors in pipelines
cd "${0%/*}" # cd into script's current location
cd .. # cd into the root directory of the project

docker run -d --name quakejs -e HTTP_PORT=8080 -p 8080:80 -p 27960:27960 treyyoder/quakejs:latest
# docker build . -t quake
# docker run -d --t quake -e HTTP_PORT=8080 -p 8080:80 -p 27960:27960 
echo "Started quake on HTTP port 8080"

docker build ./netris -t netris 
docker run -p 4096:4096 -p 3996:3996 -it netris

echo "Started quake on SSh port 4096"


docker ps

echo "IP: -------------"
ip a show enp0s31f6



