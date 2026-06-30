Task 3 Complete Command Runbook

Cluster & Helm Setup

kubectl cluster-info
kubectl get nodes
helm repo add argo https://argoproj.github.io/argo-helm
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

--------------------------
application.yaml

kubectl apply -f "application.yaml"
kubectl get pods -A
kubectl get svc -A
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl get applications -n argocd
kubectl port-forward svc/argocd-server -n argocd 8080:443
service-monitor-backend.yaml
kubectl apply -f "service-monitor-backend.yaml"
kubectl get pods -A
kubectl get svc -A
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl get servicemonitor -A

--------------------------
prometheusrule.yaml

kubectl apply -f "prometheusrule.yaml"
kubectl get pods -A
kubectl get svc -A
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl get prometheus -A
service-monitoring-frontend.yaml
kubectl apply -f "service-monitoring-frontend.yaml"
kubectl get pods -A
kubectl get svc -A
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl get servicemonitor -A

--------------------------
values.yaml

kubectl apply -f "values.yaml"
kubectl get pods -A
kubectl get svc -A
kubectl describe pod <pod-name>
kubectl logs <pod-name>

--------------------------
values.yaml

kubectl apply -f "values.yaml"
kubectl get pods -A
kubectl get svc -A
kubectl describe pod <pod-name>
kubectl logs <pod-name>
Verification & Cleanup
kubectl get all -A
helm list -A
kubectl delete -f .
