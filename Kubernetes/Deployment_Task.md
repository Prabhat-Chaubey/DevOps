# Kubernetes Deployment Tasks Guide

## Table of Contents
1. [Task 1: Create nginx-deploy](#task-1)
2. [Task 2: Create easy-peasy](#task-2)
3. [Task 3: Scale nginx-deploy](#task-3)
4. [Task 4: Create <yourname>-app](#task-4)
5. [Task 5: Rolling Update](#task-5)
6. [Task 6: Troubleshoot lemon](#task-6)

---

## Task 1: Create nginx-deploy Deployment <a name="task-1"></a>
**Requirements**:
- Name: `nginx-deploy`
- Image: `nginx:1.19-alpine`
- Namespace: `default`
- Replicas: `1`
- Labels: `app=nginx-deploy`

### Solution:
```bash
kubectl create deployment nginx-deploy \
  --image=nginx:1.19-alpine \
  --replicas=1 \
  --namespace=default \
  --labels=app=nginx-deploy
```
---
## Task 2: Create easy-peasy Deployment <a name="task-2"></a>
> Requirements:
> + Name: easy-peasy
> + Image: busybox:1.34
> + Replicas: 5
> + Command: sleep infinity
### Solution:
 ```bash
kubectl create deployment easy-peasy \
  --image=busybox:1.34 \
  --replicas=5 \
  -- /bin/sh -c "sleep infinity"
 ```
---
## Task 3: Scale nginx-deploy <a name="task-3"></a>
> Requirements:
> + Scale deployment to 6 replicas
### Solution:
- 
  ```bash
  kubectl scale deployment nginx-deploy --replicas=6
  ```
---
## Task 4: Create <yourname>-app Deployment <a name="task-4"></a>
> Requirements:
> + Custom deployment with init container
> + Redis container + busybox init container
> + Specific labels for deployment and pods
- 
  ```bash
  apiVersion: apps/v1
  kind: Deployment
  metadata:
  name: <yourname>-app
  labels:
    task: deploy
    app: <yourname>-app
    student: <yourname>
  spec:
  replicas: 1
  selector:
    matchLabels:
      deploy: <yourname>-app
  template:
    metadata:
      labels:
        deploy: <yourname>-app
        kind: redis
        role: master
        tier: db
    spec:
      initContainers:
      - name: init-delay
        image: busybox:1.34
        command: ['sh', '-c', 'sleep 10']
      containers:
      - name: redis-master
        image: redis:5-alpine
        ports:
        - containerPort: 6379
  ```
  ---
  ## Task 5: Rolling Update <a name="task-5"></a>
  > Requirements:
  > + Update nginx-deploy from 1.19-alpine to 1.21-alpine
  ### Solution:
  - 
    ```bash
    kubectl set image deployment/nginx-deploy nginx=nginx:1.21-alpine --record
    ```
  ---
  ## Task 6: Troubleshoot lemon Deployment <a name="task-6"></a>
  > Scenario:
  > + Deployment exists but no pods running in `trouble` namespace
  ### Troubleshooting Steps:
    - #### 1.Check deployment details:
      ```bash
      kubectl describe deployment -n trouble lemon
      ```
    - #### 2.Investigate events:
      ```bash
      kubectl get events -n trouble --sort-by='.lastTimestamp'
      ```
    - #### 3.Common fixes:
      ```bash
      # For image issues:
      kubectl set image deployment/lemon -n trouble <container>=valid-image:tag

      # For resource issues:
      kubectl edit deployment -n trouble lemon
      ```

  ---
