#!/bin/bash
TENANT=$1
if [ -z "$TENANT" ]; then
  echo "Usage: ./create-tenant.sh <tenant-name>"
  exit 1
fi
echo "Creating namespace..."
kubectl create namespace $TENANT
echo"Applying ResourceQuota..."
kubectl apply -f ../quotas/tenant-a-resourcequota.yaml -n $TENANT
echo "Applying LimitRange..."
kubectl apply -f ../quotas/limitrange.yaml -n $TENANT

echo "Done."