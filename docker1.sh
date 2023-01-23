#!/bin/bash

#how to delete all container at once?
#docker container inspect

docker container rm 502022a3f14d

docker container ls -a

docker run -d --name running_app ubuntu sleep 60

docker container ls

docker container inspect d5ae


