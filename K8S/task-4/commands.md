Task 4 - Project Aware Command Runbook

Cluster

kubectl version
kubectl cluster-info
kubectl get nodes
kubectl get ns
Ingress - saasify-ingress (ingress.yaml)
kubectl apply -f "ingress.yaml"
kubectl get ingress saasify-ingress -n control-plane
kubectl describe ingress saasify-ingress -n control-plane

------------------------------------------

 -  (._ingress.yaml)

kubectl apply -f "._ingress.yaml"
kubectl describe   -n <resource-namespace>
ResourceQuota - tenant-resourcequota (tenant-a-resourcequota.yaml)
kubectl apply -f "tenant-a-resourcequota.yaml"
kubectl get resourcequota tenant-resourcequota -n tenant-a
kubectl describe resourcequota tenant-resourcequota -n tenant-a

------------------------------------------

 -  (._tenant-a-resourcequota.yaml)

kubectl apply -f "._tenant-a-resourcequota.yaml"
kubectl describe   -n <resource-namespace>

------------------------------------------

LimitRange - tenant-limitrange (limit-range.yaml)

kubectl apply -f "limit-range.yaml"
kubectl get limitrange tenant-limitrange -n tenant-a
kubectl describe limitrange tenant-limitrange -n tenant-a

------------------------------------------
 -  (._limit-range.yaml)

kubectl apply -f "._limit-range.yaml"
kubectl describe   -n <resource-namespace>
ResourceQuota - tenant-resourcequots (tenant-c-resourcequota.yaml)
kubectl apply -f "tenant-c-resourcequota.yaml"
kubectl get resourcequota tenant-resourcequots -n tenant-c
kubectl describe resourcequota tenant-resourcequots -n tenant-c

------------------------------------------
 -  (._tenant-c-resourcequota.yaml)

kubectl apply -f "._tenant-c-resourcequota.yaml"
kubectl describe   -n <resource-namespace>
ResourceQuota - tenant-resourcequota (tenant-b-resource.yaml)
kubectl apply -f "tenant-b-resource.yaml"
kubectl get resourcequota tenant-resourcequota -n tenant-b
kubectl describe resourcequota tenant-resourcequota -n tenant-b

------------------------------------------
 -  (._tenant-b-resource.yaml)

kubectl apply -f "._tenant-b-resource.yaml"
kubectl describe   -n <resource-namespace>
Service - backend (backend-service.yaml)
kubectl apply -f "backend-service.yaml"
kubectl get svc backend -n tenant-a
kubectl describe svc backend -n tenant-a
kubectl get endpoints backend -n tenant-a

------------------------------------------
 -  (._backend-service.yaml)

kubectl apply -f "._backend-service.yaml"
kubectl describe   -n <resource-namespace>
Service - redis (redis-service.yaml)
kubectl apply -f "redis-service.yaml"
kubectl get svc redis -n tenant-a
kubectl describe svc redis -n tenant-a
kubectl get endpoints redis -n tenant-a

------------------------------------------
 -  (._redis-service.yaml)

kubectl apply -f "._redis-service.yaml"
kubectl describe   -n <resource-namespace>
Deployment - redis (redis-deployment.yaml)
kubectl apply -f "redis-deployment.yaml"
kubectl get deployment redis -n tenant-a
kubectl rollout status deployment/redis -n tenant-a
kubectl rollout restart deployment/redis -n tenant-a
kubectl describe deployment redis -n tenant-a
kubectl logs deployment/redis -n tenant-a

------------------------------------------
 -  (._redis-deployment.yaml)

kubectl apply -f "._redis-deployment.yaml"
kubectl describe   -n <resource-namespace>
Deployment - frontend (frontend-deployment.yaml)
kubectl apply -f "frontend-deployment.yaml"
kubectl get deployment frontend -n tenant-a
kubectl rollout status deployment/frontend -n tenant-a
kubectl rollout restart deployment/frontend -n tenant-a
kubectl describe deployment frontend -n tenant-a
kubectl logs deployment/frontend -n tenant-a

------------------------------------------
 -  (._frontend-deployment.yaml)

kubectl apply -f "._frontend-deployment.yaml"
kubectl describe   -n <resource-namespace>
Deployment - backend (backend-deployemnet.yaml)
kubectl apply -f "backend-deployemnet.yaml"
kubectl get deployment backend -n tenant-a
kubectl rollout status deployment/backend -n tenant-a
kubectl rollout restart deployment/backend -n tenant-a
kubectl describe deployment backend -n tenant-a
kubectl logs deployment/backend -n tenant-a

------------------------------------------
 -  (._backend-deployemnet.yaml)

kubectl apply -f "._backend-deployemnet.yaml"
kubectl describe   -n <resource-namespace>
Service - frontend (frontend-service.yaml)
kubectl apply -f "frontend-service.yaml"
kubectl get svc frontend -n tenant-a
kubectl describe svc frontend -n tenant-a
kubectl get endpoints frontend -n tenant-a

------------------------------------------
 -  (._frontend-service.yaml)

kubectl apply -f "._frontend-service.yaml"
kubectl describe   -n <resource-namespace>
Namespace - control-plane (control-plane.yaml)
kubectl apply -f "control-plane.yaml"
kubectl get ns control-plane
kubectl describe namespace control-plane

------------------------------------------
 -  (._control-plane.yaml)

kubectl apply -f "._control-plane.yaml"
kubectl describe   -n <resource-namespace>
Namespace - tenant-a (tenant-a.yaml)
kubectl apply -f "tenant-a.yaml"
kubectl get ns tenant-a
kubectl describe namespace tenant-a

------------------------------------------
 -  (._tenant-a.yaml)

kubectl apply -f "._tenant-a.yaml"
kubectl describe   -n <resource-namespace>
Namespace - tenant-b (tenant-b.yaml)
kubectl apply -f "tenant-b.yaml"
kubectl get ns tenant-b
kubectl describe namespace tenant-b

------------------------------------------
 -  (._tenant-b.yaml)

kubectl apply -f "._tenant-b.yaml"
kubectl describe   -n <resource-namespace>
Namespace - tenant-c (tenant-c.yaml)
kubectl apply -f "tenant-c.yaml"
kubectl get ns tenant-c
kubectl describe namespace tenant-c

------------------------------------------
 -  (._tenant-c.yaml)


kubectl apply -f "._tenant-c.yaml"
kubectl describe   -n <resource-namespace>
Service - backend (backend-service.yaml)
kubectl apply -f "backend-service.yaml"
kubectl get svc backend -n tenant-b
kubectl describe svc backend -n tenant-b
kubectl get endpoints backend -n tenant-b

------------------------------------------
 -  (._backend-service.yaml)

kubectl apply -f "._backend-service.yaml"
kubectl describe   -n <resource-namespace>
Service - redis-service (redis-service.yaml)
kubectl apply -f "redis-service.yaml"
kubectl get svc redis-service -n tenant-b
kubectl describe svc redis-service -n tenant-b
kubectl get endpoints redis-service -n tenant-b

------------------------------------------
 -  (._redis-service.yaml)

kubectl apply -f "._redis-service.yaml"
kubectl describe   -n <resource-namespace>
Deployment - redis-deployment (redis-deployment.yaml)
kubectl apply -f "redis-deployment.yaml"
kubectl get deployment redis-deployment -n tenant-b
kubectl rollout status deployment/redis-deployment -n tenant-b
kubectl rollout restart deployment/redis-deployment -n tenant-b
kubectl describe deployment redis-deployment -n tenant-b
kubectl logs deployment/redis-deployment -n tenant-b

------------------------------------------
 -  (._redis-deployment.yaml)

kubectl apply -f "._redis-deployment.yaml"
kubectl describe   -n <resource-namespace>
Deployment - frontend (frontend-deployment.yaml)
kubectl apply -f "frontend-deployment.yaml"
kubectl get deployment frontend -n tenant-b
kubectl rollout status deployment/frontend -n tenant-b
kubectl rollout restart deployment/frontend -n tenant-b
kubectl describe deployment frontend -n tenant-b
kubectl logs deployment/frontend -n tenant-b

------------------------------------------
 -  (._frontend-deployment.yaml)

kubectl apply -f "._frontend-deployment.yaml"
kubectl describe   -n <resource-namespace>
Deployment - backend (backend-deployment.yaml)
kubectl apply -f "backend-deployment.yaml"
kubectl get deployment backend -n tenant-b
kubectl rollout status deployment/backend -n tenant-b
kubectl rollout restart deployment/backend -n tenant-b
kubectl describe deployment backend -n tenant-b
kubectl logs deployment/backend -n tenant-b

------------------------------------------
 -  (._backend-deployment.yaml)

kubectl apply -f "._backend-deployment.yaml"
kubectl describe   -n <resource-namespace>
Service - frontend (frontend-service.yaml)
kubectl apply -f "frontend-service.yaml"
kubectl get svc frontend -n tenant-b
kubectl describe svc frontend -n tenant-b
kubectl get endpoints frontend -n tenant-b

------------------------------------------
 -  (._frontend-service.yaml)

kubectl apply -f "._frontend-service.yaml"
kubectl describe   -n <resource-namespace>
Service - backend (backend-service.yaml)
kubectl apply -f "backend-service.yaml"
kubectl get svc backend -n tenant-c
kubectl describe svc backend -n tenant-c
kubectl get endpoints backend -n tenant-c

------------------------------------------
 -  (._backend-service.yaml)

kubectl apply -f "._backend-service.yaml"
kubectl describe   -n <resource-namespace>
Service - redis-service (redis-service.yaml)
kubectl apply -f "redis-service.yaml"
kubectl get svc redis-service -n tenant-c
kubectl describe svc redis-service -n tenant-c
kubectl get endpoints redis-service -n tenant-c

------------------------------------------
 -  (._redis-service.yaml)

kubectl apply -f "._redis-service.yaml"
kubectl describe   -n <resource-namespace>
Deployment - redis-deployment (redis-deployment.yaml)
kubectl apply -f "redis-deployment.yaml"
kubectl get deployment redis-deployment -n tenant-c
kubectl rollout status deployment/redis-deployment -n tenant-c
kubectl rollout restart deployment/redis-deployment -n tenant-c
kubectl describe deployment redis-deployment -n tenant-c
kubectl logs deployment/redis-deployment -n tenant-c

------------------------------------------
 -  (._redis-deployment.yaml)

kubectl apply -f "._redis-deployment.yaml"
kubectl describe   -n <resource-namespace>
Deployment - frontend (frontend-deployment.yaml)
kubectl apply -f "frontend-deployment.yaml"
kubectl get deployment frontend -n tenant-c
kubectl rollout status deployment/frontend -n tenant-c
kubectl rollout restart deployment/frontend -n tenant-c
kubectl describe deployment frontend -n tenant-c
kubectl logs deployment/frontend -n tenant-c

------------------------------------------
 -  (._frontend-deployment.yaml)

kubectl apply -f "._frontend-deployment.yaml"
kubectl describe   -n <resource-namespace>
Deployment - backend (backend-deployment.yaml)
kubectl apply -f "backend-deployment.yaml"
kubectl get deployment backend -n tenant-c
kubectl rollout status deployment/backend -n tenant-c
kubectl rollout restart deployment/backend -n tenant-c
kubectl describe deployment backend -n tenant-c
kubectl logs deployment/backend -n tenant-c

------------------------------------------
 -  (._backend-deployment.yaml)

kubectl apply -f "._backend-deployment.yaml"
kubectl describe   -n <resource-namespace>
Service - frontend (frontend-service.yaml)
kubectl apply -f "frontend-service.yaml"
kubectl get svc frontend -n tenant-c
kubectl describe svc frontend -n tenant-c
kubectl get endpoints frontend -n tenant-c

------------------------------------------
 -  (._frontend-service.yaml)

kubectl apply -f "._frontend-service.yaml"
kubectl describe   -n <resource-namespace>
Service - api-gateway (gateway-service.yaml)
kubectl apply -f "gateway-service.yaml"
kubectl get svc api-gateway -n control-plane
kubectl describe svc api-gateway -n control-plane
kubectl get endpoints api-gateway -n control-plane

------------------------------------------
 -  (._gateway-service.yaml)

kubectl apply -f "._gateway-service.yaml"
kubectl describe   -n <resource-namespace>
Deployment - api-gateway (gateway-deployment.yaml)
kubectl apply -f "gateway-deployment.yaml"
kubectl get deployment api-gateway -n control-plane
kubectl rollout status deployment/api-gateway -n control-plane
kubectl rollout restart deployment/api-gateway -n control-plane
kubectl describe deployment api-gateway -n control-plane
kubectl logs deployment/api-gateway -n control-plane

------------------------------------------
 -  (._gateway-deployment.yaml)

kubectl apply -f "._gateway-deployment.yaml"
kubectl describe   -n <resource-namespace>
NetworkPolicy - tenant-b-network-policy (policy-b.yaml)
kubectl apply -f "policy-b.yaml"
kubectl get networkpolicy tenant-b-network-policy -n tenant-b
kubectl describe networkpolicy tenant-b-network-policy -n tenant-b

------------------------------------------
 -  (._policy-b.yaml)

kubectl apply -f "._policy-b.yaml"
kubectl describe   -n <resource-namespace>
NetworkPolicy - tenant-a-ntework-policy (policy-a.yaml)
kubectl apply -f "policy-a.yaml"
kubectl get networkpolicy tenant-a-ntework-policy -n tenant-a
kubectl describe networkpolicy tenant-a-ntework-policy -n tenant-a

------------------------------------------
 -  (._policy-a.yaml)

kubectl apply -f "._policy-a.yaml"
kubectl describe   -n <resource-namespace>
NetworkPolicy - tenant-c-network-policy (pilicy-c.yaml)
kubectl apply -f "pilicy-c.yaml"
kubectl get networkpolicy tenant-c-network-policy -n tenant-c
kubectl describe networkpolicy tenant-c-network-policy -n tenant-c

------------------------------------------
 -  (._policy-c.yaml)

kubectl apply -f "._pilicy-c.yaml"
kubectl describe   -n <resource-namespace>
