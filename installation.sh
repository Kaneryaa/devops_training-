#!/bin/bash 
echo "=================================="
echo "                   installtion               "
#apt-get update -y
#apt-get install docker.io -y
#curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
#sudo install minikube-linux-amd64 /usr/local/bin/minikube
#sudo groupadd docker
#sudo usermod -aG docker $USER
#minikube start --driver=docker  --force
#docker ps 
#minikube ssh
#snap install kubectl --classic
#kubectl get pods 
#kubectl get pods --namespace=kube-system
#kubectl get namespace
#kubectl create namespace node-todo-app
echo "============================================"
echo "       pod                          "
#kubectl apply -f project_pod.yaml
#kubectl get pods --namespace=node-todo-app
#kubectl get nodes
#minikube ssh
#kubectl get pods --namespace=node-todo-app -o wide
#kubectl delete -f project_pod.yaml
#kubectl get pods
#kubectl delete pods -n node-todo-app node-todo-app
#kubectl get pods
echo "================================================"
echo "     javaProject            "
#kubectl create -f javaProject.yaml
#kubectl describe pod java-app
#kubectl get pods
echo "==============================================="
echo "           service                        "
#kubectl create -f service.yaml
#kubectl get svc
#kubectl describe svc helloworld-service
#kubectl delete svc helloworld-service
kubectl get all
echo "=============================================="
echo "               deployment                    "
#kubectl apply -f deployment.yaml
#kubectl describe pod django-app-deployment
#kubectl get pods
#kubectl create namespace node-todo-app
#kubectl get namespace
#kubectl apply -f deployment.yaml
#kubectl get pods -n node-todo-app
#kubectl delete pods django-todo-deployment-69d588ff4-5t76q
#kubectl delete -f deployment.yaml
#kubectl delete pods -n node-todo-app django-todo-deployment-69d588ff4-2kvrv
echo "================================================"
echo "              Django Services                  "
#kubectl apply -f django-svc.yaml
#kubectl  get svc -n node-todo-app
#kubectl get svc -n node-todo-app -o json
#kubect get pods -n node-todo-app -o wide 
#kubectl apply -f django-svc.yaml
#kubectl delete -f django-svc.yaml
#minikube service django-svc -n node-todo-app --url 
#minikube ssh
minikube service django-svc -n node-todo-app
curl L http://192.168.59.105:30299
#ping 192.168.59.105

