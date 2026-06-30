-------------------------------------------------------------------


Task 2 - Complete Command Runbook

Cluster Setup

kubectl get nodes
kubectl cluster-info
kubectl get ns
kubectl top nodes
kubectl top pods -A

------------------------------------


HPA-back-deplyment.yaml

kubectl apply -f "HPA-back-deplyment.yaml"
kubectl get all -n eshope
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get hpa -n eshope
kubectl describe hpa <hpa-name> -n eshope
kubectl top pods -n eshope

------------------------------------

HPA-Front-deplyment.yaml

kubectl apply -f "HPA-Front-deplyment.yaml"
kubectl get all -n eshope
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get hpa -n eshope
kubectl describe hpa <hpa-name> -n eshope
kubectl top pods -n eshope


------------------------------------
v2-backend-deploymet.yaml

kubectl apply -f "v2-backend-deploymet.yaml"
kubectl get all -n eshope
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl rollout status deployment/<deployment-name> -n eshope
kubectl rollout history deployment/<deployment-name> -n eshope
kubectl rollout undo deployment/<deployment-name> -n eshope
kubectl rollout restart deployment/<deployment-name> -n eshope
kubectl scale deployment <deployment-name> --replicas=3 -n eshope

------------------------------------
v2-frontend-deployment.yaml

kubectl apply -f "v2-frontend-deployment.yaml"
kubectl get all -n eshope
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl rollout status deployment/<deployment-name> -n eshope
kubectl rollout history deployment/<deployment-name> -n eshope
kubectl rollout undo deployment/<deployment-name> -n eshope
kubectl rollout restart deployment/<deployment-name> -n eshope
kubectl scale deployment <deployment-name> --replicas=3 -n eshope

------------------------------------
Load Testing & Verification

kubectl run load-generator --image=busybox -it --rm -- /bin/sh
while true; do wget -q -O- http://frontend-service; done
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl get deployment -n eshope
kubectl get pods -o wide -n eshope
kubectl delete -f .
