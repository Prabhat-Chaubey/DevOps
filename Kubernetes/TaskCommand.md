## 🛠️ Task 3: Debugging a Broken Pod in Namespace trouble

🎯 Goal
Fix the Pod named web in the namespace trouble so that:

✅ Image: `nginx:1.19-alpine`

✅ Pod status: `Running`

### Step-by-Step Instructions
- ### 1️⃣ View Pods in trouble Namespace
- Check the status of the web pod.
  ```
  kubectl get pods -n trouble
  ```
- ### 2️⃣ Describe the web Pod
- Check for detailed errors and event logs.
  ```
  kubectl describe pod web -n trouble
  ```
- ### 3️⃣ View Pod YAML (Optional Debugging)
- If you want to inspect the full YAML config:
  ```
  kubectl get pod web -n trouble -o yaml
  ```
- ### 4️⃣ Delete the Broken Pod
- Since pods can't be edited directly, delete the existing broken pod.
  ```
  kubectl delete pod web -n trouble
  ```
- ### 5️⃣ Recreate the Pod with Correct Image
- Recreate the web pod using the correct image and configuration:
  ```
  kubectl run web --image=nginx:1.19-alpine --restart=Never --port=80 -n trouble
  ```
  
--- 

##  🛠️ Task 4: Redis-DB Pod Fix for Kubernetes

### Task Overview

This task involves troubleshooting and fixing a failing **`redis-db` pod** deployed in the `trouble` namespace in a Kubernetes environment. The pod was stuck in a **`CrashLoopBackOff`** state due to a typo in the container's command.

### Problem Description

The `redis-db` pod failed to start properly due to a typo in the command section of the pod definition. Specifically, the command `sleeep` was used instead of the correct `sleep` command. This caused the pod to fail repeatedly, entering a crash loop.

### Solution

The issue was resolved by editing the pod definition to use the correct `sleep` command. After fixing the command, the pod was deleted and recreated to apply the changes.


### Steps Taken

### 1. Check Pod Status

First, the status of the pod was checked using the following command:
```bash
kubectl get pods -n trouble
```
### 2. Inspect the Pod Description
+ The next step was to inspect the pod's detailed description to understand the issue:
  ```bash
  kubectl describe pod redis-db -n trouble
  ```
+ This revealed that the pod was failing because of an incorrect command.
### 3. Check Logs for Further Details
+ To confirm the exact issue, the logs for the redis-db pod were examined:
  ```bash
  kubectl logs redis-db -n trouble
  ```
### 4. Edit the Pod Command
+ To fix the issue, the pod definition was edited to replace sleeep with the correct sleep command. This was done using the following command:
  ```bash
  kubectl edit pod redis-db -n trouble
  ```
### 5. Delete and Recreate the Pod
After fixing the command, the pod was deleted and recreated to apply the change:
```bash
kubectl delete pod redis-db -n trouble
kubectl apply -f redis-fixed.yaml
```
---
# 🛠️ Task 5: Create a Pod with Invalid Image Name

## Task Overview

In this task, we will create a new Kubernetes pod named **redis** using the image `redis:123`, which is intentionally incorrect to trigger an image pull error. The task aims to demonstrate how to create a pod with a specific image and then troubleshoot the issue caused by an invalid image name.

### Pod Specifications

- **Pod Name**: redis
- **Image Name**: redis:123 (Intentionally incorrect)
- **Namespace**: default
- **Container Port**: 6379

---

## Steps to Reproduce

### 1. Create the Pod Definition File

Create a YAML file to define the pod. The pod will use the `redis:123` image (which does not exist). You can use the following commands:

```bash
nano redis-pod.yaml
```

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: redis
  namespace: default
spec:
  containers:
    - name: redis
      image: redis:123  # This is intentionally incorrect
      ports:
        - containerPort: 6379

```
### 2. Apply the YAML to Create the Pod
+ Run the following command to create the pod in the default namespace:
  ```bash
  kubectl apply -f redis-pod.yaml
  ```
### 3. Verify Pod Creation
+ Check if the pod was created and is in the ImagePullBackOff or ErrImagePull state due to the invalid image:
  ```bash
  kubectl get pods -n default
  ```
--- 
