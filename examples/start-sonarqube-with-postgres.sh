#!/bin/bash

docker stop  sonarqube
docker rm    sonarqube


echo "请先启动postgres 数据库"


host_ip="192.168.2.85"

docker run -d \
--name sonarqube \
--add-host "postgres.tools.devops.marathon.mesos:${host_ip}" \
-e  "sonar.jdbc.username=postgres" \
-e  "sonar.jdbc.password=your_password" \
-e  "TZ=Asia/Shanghai" \
-e  "sonar.jdbc.url=jdbc:postgresql://postgres.tools.devops.marathon.mesos:5432/sonarqube" \
-p 9000:9000 \
ascs/sonarqube:7.7-community-zh-with-plugins

echo "缺省用户名:admin 缺省密码:admin"
