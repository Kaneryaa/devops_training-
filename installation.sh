#!/bin/bash 
#apt-get update -y
#apt-get install docker.io -y
#curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
#sudo install minikube-linux-amd64 /usr/local/bin/minikube
#sudo groupadd docker
#sudo usermod -aG docker $USER
minikube start --driver=docker  --force


