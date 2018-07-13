#!/usr/bin/env bash

# remove container & image
docker rm jenkins-casc && docker rmi jenkins-casc || true

# build updated image from Dockerfile
docker build -t jenkins-casc .

# run newly built image
docker run --name jenkins-casc -p 8080:8080 -p 50000:50000 -it jenkins-casc
