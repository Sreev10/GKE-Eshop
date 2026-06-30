Task 1 - Complete Command Runbook
Commands organized by deployment lifecycle based on the uploaded Task 1 project.


Cluster Setup

kubectl version
kubectl cluster-info
kubectl config current-context
kubectl get nodes
kubectl get namespaces

-------------------------------------------
postgres-deployment.yaml

kubectl apply -f "postgres-deployment.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get deployment -n eshope
kubectl rollout status deployment/<deployment-name> -n eshope
kubectl rollout history deployment/<deployment-name> -n eshope
kubectl rollout restart deployment/<deployment-name> -n eshope
kubectl rollout undo deployment/<deployment-name> -n eshope
kubectl describe deployment <deployment-name> -n eshope
kubectl exec -it <pod-name> -n eshope -- /bin/sh


-------------------------------------------
secrets.yaml

kubectl apply -f "secrets.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get secret -n eshope
kubectl describe secret <secret-name> -n eshope
kubectl get secret <secret-name> -o yaml -n eshope


-------------------------------------------
backend-service.yaml

kubectl apply -f "backend-service.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl describe svc <service-name> -n eshope
kubectl get endpoints <service-name> -n eshope
kubectl port-forward svc/<service-name> 8080:80 -n eshope
curl http://localhost:8080


-------------------------------------------
postgres-service.yaml

kubectl apply -f "postgres-service.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl describe svc <service-name> -n eshope
kubectl get endpoints <service-name> -n eshope
kubectl port-forward svc/<service-name> 8080:80 -n eshope
curl http://localhost:8080


-------------------------------------------
namespace.yaml

kubectl apply -f "namespace.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get ns
kubectl describe namespace eshope


-------------------------------------------
pvc.yaml

kubectl apply -f "pvc.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get pvc -n eshope
kubectl describe pvc <pvc-name> -n eshope
kubectl get pv


-------------------------------------------
configmap.yaml

kubectl apply -f "configmap.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get configmap -n eshope
kubectl describe configmap <configmap-name> -n eshope


-------------------------------------------
frontend-deployment.yaml

kubectl apply -f "frontend-deployment.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get deployment -n eshope
kubectl rollout status deployment/<deployment-name> -n eshope
kubectl rollout history deployment/<deployment-name> -n eshope
kubectl rollout restart deployment/<deployment-name> -n eshope
kubectl rollout undo deployment/<deployment-name> -n eshope
kubectl describe deployment <deployment-name> -n eshope
kubectl exec -it <pod-name> -n eshope -- /bin/sh


-------------------------------------------
backend-deploymet.yaml

kubectl apply -f "backend-deploymet.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl get deployment -n eshope
kubectl rollout status deployment/<deployment-name> -n eshope
kubectl rollout history deployment/<deployment-name> -n eshope
kubectl rollout restart deployment/<deployment-name> -n eshope
kubectl rollout undo deployment/<deployment-name> -n eshope
kubectl describe deployment <deployment-name> -n eshope
kubectl exec -it <pod-name> -n eshope -- /bin/sh


-------------------------------------------
frontend-service.yaml

kubectl apply -f "frontend-service.yaml"
kubectl get all -n eshope
kubectl get pods -n eshope
kubectl get svc -n eshope
kubectl get events -n eshope --sort-by=.metadata.creationTimestamp
kubectl describe pod <pod-name> -n eshope
kubectl logs <pod-name> -n eshope
kubectl describe svc <service-name> -n eshope
kubectl get endpoints <service-name> -n eshope
kubectl port-forward svc/<service-name> 8080:80 -n eshope
curl http://localhost:8080


-------------------------------------------
General Troubleshooting

kubectl top pods -n eshope
kubectl top nodes
kubectl describe node <node-name>
kubectl get all -n eshope -o wide
kubectl delete pod <pod-name> -n eshope
kubectl rollout restart deployment/frontend -n eshope
kubectl rollout restart deployment/backend -n eshope
kubectl rollout restart deployment/postgres -n eshope
kubectl delete -f .
kubectl delete namespace eshope
