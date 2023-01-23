#!/bin/bash 

echo "=================="
echo "pulling image  mysql version 5.7from docker hub "
docker pull mysql:5.7
echo "================"
echo "image"
docker images 
echo "================="
echo "inspect"
#show low-level info about container 
docker inspect mysql:5.7
echo "================="
echo "run mysql container"
# -e stand for  export , -v is a volume , -d detach (deamon) 
mkdir data
docker run --name db -e MYSQL_ROOT_PASSWORD=secratepass -d  -p 3030:3306 -v /home/vagrant/docker:/var/lib/mysql mysql:5.7
echo "==================="
echo "running container"
docker ps
echo "end"
