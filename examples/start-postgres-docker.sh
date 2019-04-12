#!/bin/bash

docker stop postgres-for-sonarqube
docker rm   postgres-for-sonarqube

docker run -d \
--name postgres-for-sonarqube \
-p 5432:5432 \
-v `pwd`/pgdata:/var/lib/postgresql/data \
-e "POSTGRES_USER=postgres" \
-e "POSTGRES_PASSWORD=your_password" \
-e "POSTGRES_DB=sonarqube" \
postgres:9.6.12-alpine