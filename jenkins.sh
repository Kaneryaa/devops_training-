#!/bin/bash

echo "================"
echo "  install  Mysql "
#docker pull mysql 
echo "================"
echo  "All images "
docker images
echo "==============="
echo " run mysql images "
# -it -> intrective terminal , 
#docker run -it --name Database -e MYSQL_ROOT_PASSWORD=danish  mysql
echo "==================="
echo "exec run a command in a running container"
#docker exec -it a05c2233b9b3 bash
echo "====================="
echo "  install jenkins "
#docker pull jenkins/jenkins
echo "==================="
echo "   run jenkins "
# -d stand for daemon 
docker run -d --name server -p 8080:8080  jenkins/jenkins
echo "======================="
echo "     show running container "
docker ps 
docker ps -a
echo "============================"
#docker exec -it 

