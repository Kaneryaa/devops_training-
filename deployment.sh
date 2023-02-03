#!/bin/bash
#kubectl get nodes 
#kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.10
#kubectl get pod
#kubectl get deploy
#kubectl expose deployment hello-minikube --type=NodePort --port=8080
#minikube service hello-minikube --url
#kubectl get svc
#kubectl delete svc hello-minikube
#kubectl get deploy
#kubectl delete deploy hello-minikube
#minikube stop
minikube delete
