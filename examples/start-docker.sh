#!/bin/bash

docker stop  sonarqube
docker rm    sonarqube

docker run -d \
--name sonarqube \
-p 9000:9000 \
ascs/sonarqube:7.7-community-zh

echo "缺省用户名:admin 缺省密码:admin"
