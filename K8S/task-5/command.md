=========================================================
TASK-5 : LEGACY MONOLITH BREAKUP
ALL COMMANDS
=========================================================

##############################
# 1. CREATE NAMESPACES
##############################

kubectl create namespace finbank-legacy

kubectl create namespace finbank-new

kubectl apply -f 01-namespaces/

kubectl get ns


##########################################################
# 2. POSTGRESQL STATEFULSET
##########################################################

kubectl apply -f 02-postgres/

kubectl get pods -n finbank-legacy

kubectl get statefulset -n finbank-legacy

kubectl get svc -n finbank-legacy

kubectl get pvc -n finbank-legacy

kubectl get secret -n finbank-legacy

kubectl describe statefulset postgres -n finbank-legacy

kubectl describe pod postgres-0 -n finbank-legacy

kubectl logs postgres-0 -n finbank-legacy


##########################################################
# 3. DEPLOY MONOLITH
##########################################################

kubectl apply -f 03-monolith/

kubectl get deployment -n finbank-legacy

kubectl get pods -n finbank-legacy

kubectl get svc -n finbank-legacy

kubectl describe deployment monolith -n finbank-legacy

kubectl logs deployment/monolith -n finbank-legacy


##########################################################
# 4. DEPLOY AUTH SERVICE
##########################################################

kubectl apply -f 04-auth-service/

kubectl get deployment -n finbank-new

kubectl get pods -n finbank-new

kubectl get svc -n finbank-new

kubectl describe deployment auth-service -n finbank-new

kubectl logs deployment/auth-service -n finbank-new


##########################################################
# 5. DEPLOY NGINX API GATEWAY
##########################################################

kubectl apply -f 05-nginx-gateway/

kubectl get deployment -n finbank-new

kubectl get svc -n finbank-new

kubectl get configmap -n finbank-new

minikube service nginx-gateway -n finbank-new


##########################################################
# 6. DATABASE MIGRATION JOB
##########################################################

kubectl apply -f 06-db-migration/

kubectl get jobs -n finbank-legacy

kubectl get pods -n finbank-legacy

kubectl logs job/h2-postgres-migration -n finbank-legacy

kubectl delete job h2-postgres-migration -n finbank-legacy

kubectl apply -f 06-db-migration/


##########################################################
# 7. INSTALL ISTIO
##########################################################

curl -L https://istio.io/downloadIstio | sh

cd istio-*

export PATH=$PWD/bin:$PATH

istioctl install --set profile=demo -y

kubectl get pods -n istio-system


##########################################################
# 8. ENABLE SIDECAR INJECTION
##########################################################

kubectl label namespace finbank-legacy istio-injection=enabled --overwrite

kubectl label namespace finbank-new istio-injection=enabled --overwrite

kubectl rollout restart deployment monolith -n finbank-legacy

kubectl rollout restart deployment auth-service -n finbank-new

kubectl rollout restart deployment nginx-gateway -n finbank-new

kubectl get pods -A

kubectl describe pod <pod-name> -n finbank-new


##########################################################
# 9. DEPLOY ISTIO RESOURCES
##########################################################

kubectl apply -f 07-istio/

kubectl get gateway -A

kubectl get virtualservice -A

kubectl get destinationrule -A

kubectl get peerauthentication -A


##########################################################
# 10. DEPLOY CIRCUIT BREAKER & RETRY POLICY
##########################################################

kubectl apply -f 08-resiliency/

kubectl get destinationrule -n finbank-new

kubectl get virtualservice -n finbank-new


##########################################################
# 11. TEST TRAFFIC SPLITTING
##########################################################

kubectl get svc istio-ingressgateway -n istio-system

curl http://<INGRESS-IP>/api/auth/login

while true
do
  curl http://<INGRESS-IP>/api/auth/login
done


##########################################################
# 12. TEST RETRY POLICY
##########################################################

kubectl scale deployment auth-service --replicas=0 -n finbank-new

curl http://<INGRESS-IP>/api/auth/login

kubectl scale deployment auth-service --replicas=1 -n finbank-new


##########################################################
# 13. FINAL VERIFICATION
##########################################################

kubectl get all -A

kubectl get all -n finbank-legacy

kubectl get all -n finbank-new

kubectl get deployment -A

kubectl get pods -A

kubectl get svc -A

kubectl get pvc -A

kubectl get statefulset -A

kubectl get jobs -A

kubectl get secret -A

kubectl get gateway -A

kubectl get virtualservice -A

kubectl get destinationrule -A

kubectl get peerauthentication -A


##########################################################
# 14. CLEANUP
##########################################################

kubectl delete -f 08-resiliency/

kubectl delete -f 07-istio/

kubectl delete -f 06-db-migration/

kubectl delete -f 05-nginx-gateway/

kubectl delete -f 04-auth-service/

kubectl delete -f 03-monolith/

kubectl delete -f 02-postgres/

kubectl delete -f 01-namespaces/

=========================================================
END OF TASK-5 COMMANDS
=========================================================