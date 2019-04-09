#!/bin/bash

docker stop  sonarqube
docker rm    sonarqube

docker run -d \
--name sonarqube \
-p 9000:9000 \
sonarqube:lts-alpine-6.6.7-zh
