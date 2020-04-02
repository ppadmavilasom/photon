#!/bin/bash

RELEASEVER=$1

if [ $# -eq 0 ]
  then
    RELEASEVER=3.0
fi

docker build -t photonrepos:$RELEASEVER -f Dockerfile.$RELEASEVER .
docker run --rm -it photonrepos:$RELEASEVER /repo_check.sh
