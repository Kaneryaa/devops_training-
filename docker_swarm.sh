#!/bin/bash

echo "======================="
echo "    initialized        "
docker swarm init
echo "======================="
echo " connect ndoes"
docker node ls
echo "========================"
echo " remove "
#docker swarm leave --force
