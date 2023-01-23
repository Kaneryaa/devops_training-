#!/bin/bash

#check containers show running docker

docker container ls

#show stop container 

docker container ls -a

#run docker 

docker container run --name OS ubuntu

# start docker command 

docker container start 7a

docker run -d --name mycountryweb ubuntu sleep 40


docker container ls

#stop docker command 

docker container stop 5020

docker container ls

docker container ls -a
