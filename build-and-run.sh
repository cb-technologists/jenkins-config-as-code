#!/usr/bin/env bash
docker container rm jenkins-casc || true
docker build -t jenkins-casc .
docker run --name jenkins-casc -p 8080:8080 -p 50000:50000 -it jenkins-casc
