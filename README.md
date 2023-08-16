*********************Minikube start**
PS C:\Users\qcs> minikube start
* minikube v1.28.0 on Microsoft Windows 10 Pro 10.0.19045 Build 19045
* Using the virtualbox driver based on existing profile

PS C:\Users\qcs> kubectl get pods
NAME                                      READY   STATUS    RESTARTS        AGE
dail-journal-deployment-5fb4cc5ff-8cbvx   1/1     Running   2 (5m52s ago)   118d
dail-journal-deployment-5fb4cc5ff-ljbvl   1/1     Running   2 (5m52s ago)   118d
dail-journal-deployment-5fb4cc5ff-prkr5   1/1     Running   2 (5m52s ago)   118d
dail-journal-deployment-5fb4cc5ff-spq47   0/1     Error     2               118d
hello-minikube-6d4c8fc769-kwvtb           1/1     Running   4 (5m52s ago)   124d
