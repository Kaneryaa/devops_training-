#!/bin/bash

echo "========================="
echo "show running container"
docker ps
echo "======================="
echo " pull the images from docker hub"
docker pull nginx
echo " intsall specific tag images:"
docker pull nginx:mainline-perl
echo "================"
echo "list of all local images"
docker images
echo "=================="
echo " Run nginx "
# --name use for unique name for images, -p use for port assign - 7090 hostpod, 80 container pod ,
#  -d daemon run the backgroud
docker run --name myweb -p 7090:80 -d nginx
echo "===================="
echo " docker stop"
docker stop bd19e20a2ae8
echo "docker running "
docker ps
echo " docker "
docker ps -a
echo " docker restart container "
docker start bd19e20a2ae8
echo "========================="
echo "path"

sudo ls /var/lib/docker/containers

echo "======================"
echo " docker exec "
# exec command run an existing container useful for debugging
docker exec myweb ls /
#-it -i intrective ad -t --tty

#docker exec -it myweb /bin/bash
echo "========================"
echo " remove speacial tag images "

docker rmi nginx:mainline-perl

echo "===================="
echo " remove container the remove images if running state "
docker rm bd19e20a2ae8

echo "==================="
echo " remove images "
docker rmi nginx
