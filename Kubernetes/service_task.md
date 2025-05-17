# Kubernetes Services Practical Task Guide

## Table of Contents
1. [Task 1: Create ClusterIP Service for `pod-info-app` Deployment](#task-1)
2. [Task 2: DNS and Web Access from BusyBox Pod](#task-2)
3. [Task 3: Deploy App with Headless and ClusterIP Services](#task-3)

---

## Task 1: Create ClusterIP Service for pod-info-app Deployment <a name="task-1"></a>
### ✅ Objective:
Create a service named `pod-info-svc` that exposes the `pod-info-app` deployment using type `ClusterIP`.

### ✅ Requirements:
- **Name**: `pod-info-svc`
- **Type**: `ClusterIP`
- **Service Port**: 80
- **Target Port**: 80
- **Selector**: Based on deployment labels (e.g., `"app": "podInfoApp"`)
  
### ✅ Commands:
```bash
kubectl get deployment pod-info-app -o jsonpath='{.spec.selector.matchLabels}'
```

```yaml
apiVersion: v1
kind: Service
metadata:
  name: pod-info-svc
spec:
  type: ClusterIP
  selector:
    app: podInfoApp
  ports:
    - port: 80
      targetPort: 80
```
- Apply with:
  ```bash
  kubectl apply -f pod-info-svc.yaml
  ```
---

## Task 2: DNS and Web Access from BusyBox Pod <a name="task-2"></a>
### ✅ Objective:
- Run a BusyBox pod and verify the pod-info-svc via HTTP and DNS.
### ✅ Commands:
- Start a temporary pod that stays alive:
  ```bash
  kubectl delete pod busybox-test --ignore-not-found
  kubectl run busybox-test --image=busybox:1.28 --restart=Never --command -- sleep 3600
  ```

  ```bash
  kubectl exec -it busybox-test -- sh
  wget -q -O- pod-info-svc > /tmp/testing-clusterip-web.log
  nslookup pod-info-svc > /tmp/testing-clusterip-nslookup.log
  exit
  ```
- Copy logs to host:
  ```bash
  kubectl cp busybox-test:/tmp/testing-clusterip-web.log $HOME/testing-clusterip-web.log
  kubectl cp busybox-test:/tmp/testing-clusterip-nslookup.log $HOME/testing-clusterip-nslookup.log
  ```
---
## Task 3: Deploy App with Headless and ClusterIP Services <a name="task-3"></a>
### ✅ Objective:
- Deploy the myapp app and expose it via both headless and normal ClusterIP services.
### ✅ Deployment:
  ```bash
    kubectl create deployment myapp --image=sbeliakou/web-pod-info:v1 --replicas=1
  ```
### ✅ Headless Service:
  ```yaml
  apiVersion: v1
kind: Service
metadata:
  name: myapp-headless
spec:
  clusterIP: None
  selector:
    app: myapp
  ports:
    - port: 80
      targetPort: 80
  ```
### ✅ ClusterIP Service:
   ```yaml
apiVersion: v1
kind: Service
metadata:
  name: myapp-clusterip
spec:
  type: ClusterIP
  selector:
    app: myapp
  ports:
    - port: 80
      targetPort: 80
   ```
  
