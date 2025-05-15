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
# 🛠️ Task 6: Update Redis Pod Image

## Task Overview

This task involves updating the image of an existing Kubernetes pod named `redis` from an incorrect image (`redis:123`) to the correct image `redis:5-alpine`.

Since pods in Kubernetes are immutable, we cannot update the image of a running pod directly. Instead, the old pod must be deleted and a new one created with the correct image.

---

## Specifications

- **Pod Name**: redis  
- **Namespace**: default  
- **Correct Image**: `redis:5-alpine`  
- **Container Port**: 6379  

---

## Steps Performed

### 1. Delete the Existing Pod

The existing pod was using an invalid image and needed to be removed:

```bash
kubectl delete pod redis -n default
```
### 2. Update the Pod Definition
+ The original redis-pod.yaml was edited to replace the incorrect image:
  ```yaml
  apiVersion: v1
  kind: Pod
  metadata:
  name: redis
  namespace: default
  spec:
  containers:
    - name: redis
      image: redis:5-alpine
      ports:
        - containerPort: 6379
  ```
### 3. Reapply the Pod YAML
+ To recreate the pod with the updated image
  ```bash
  kubectl apply -f redis-pod.yaml
  ```

---
# 🛠️ Task 7: Create Pod with Environment Variables and Save Logs

## Task Overview

In this task, a Kubernetes pod named `envtest` is created in the `default` namespace using the `busybox:1.34` image. The container runs the command `env && sleep infinity`, and two environment variables are injected into the container. The task also involves capturing the pod's logs and saving them to a file.



## Specifications

- **Pod Name**: `envtest`
- **Namespace**: `default`
- **Image**: `busybox:1.34`
- **Command**: `env && sleep infinity`
- **Environment Variables**:
  - `STUDENT_FIRST_NAME`: YourFirstName
  - `STUDENT_LAST_NAME`: YourLastName
- **Log Output File**: `$HOME/k8s_pods/default-envtest.log`


## Steps Performed

### 1. Create the Pod Manifest

A file named `envtest-pod.yaml` was created with the following content:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: envtest
  namespace: default
spec:
  containers:
    - name: envtest
      image: busybox:1.34
      command: ["sh", "-c", "env && sleep infinity"]
      env:
        - name: STUDENT_FIRST_NAME
          value: "YourFirstName"
        - name: STUDENT_LAST_NAME
          value: "YourLastName"
```
> Replace "YourFirstName" and "YourLastName" with your actual name.
+ The file was saved and applied using:
  ```bash
  kubectl apply -f envtest-pod.yaml
  ```
### 4. Save Pod Logs to a File
+ Log output was saved to the specified location:
  ```bash
  mkdir -p $HOME/k8s_pods
  kubectl logs envtest > $HOME/k8s_pods/default-envtest.log
  ```
---
# 🛠️ Task 8 (Advanced): Pod with Downward API Environment Variables

## Task Overview

This advanced task involves creating a Kubernetes pod named `i-know-who-i-am` in the `default` namespace using the `busybox:1.34` image. The container runs a command that prints environment variables and sleeps indefinitely. Several environment variables are dynamically populated using Kubernetes Downward API to provide introspective metadata to the pod.



## Specifications

- **Pod Name**: `i-know-who-i-am`
- **Namespace**: `default`
- **Image**: `busybox:1.34`
- **Command**: `env && sleep infinity`
- **Environment Variables** (resolved dynamically via Downward API):
  - `MY_NODE_NAME`: name of the node where the pod is running
  - `MY_POD_NAME`: name of the pod (automatically detected)
  - `MY_POD_NAMESPACE`: namespace of the pod (automatically detected)
  - `MY_POD_IP`: pod's IP address
  - `MY_POD_SERVICE_ACCOUNT`: name of the service account used by the pod



## Steps Performed

### 1. Create the Pod Manifest

A file named `i-know-who-i-am.yaml` was created with the following content:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: i-know-who-i-am
  namespace: default
spec:
  containers:
    - name: busybox
      image: busybox:1.34
      command: ["sh", "-c", "env && sleep infinity"]
      env:
        - name: MY_NODE_NAME
          valueFrom:
            fieldRef:
              fieldPath: spec.nodeName
        - name: MY_POD_NAME
          valueFrom:
            fieldRef:
              fieldPath: metadata.name
        - name: MY_POD_NAMESPACE
          valueFrom:
            fieldRef:
              fieldPath: metadata.namespace
        - name: MY_POD_IP
          valueFrom:
            fieldRef:
              fieldPath: status.podIP
        - name: MY_POD_SERVICE_ACCOUNT
          valueFrom:
            fieldRef:
              fieldPath: spec.serviceAccountName
```
### 2. Apply the Pod Definition
+ The pod was created using:
  ```bash
  kubectl apply -f i-know-who-i-am.yaml
  ```
### 3. Verify Pod Status
+ Pod status was confirmed using:
  ```bash
  kubectl get pods #would give all the pods
  kubectl get pods i-know-who-i-am #gives specific pod
  ```
### 4. View Pod Logs
+ Logs were retrieved using:
  ```bash
  kubectl logs i-know-who-i-am
  ```

---
# 🛠️  Task 9: Delete All Pods in `clean-up` Namespace

## Task Overview

This task focuses on cleaning up Kubernetes resources by deleting all pods in the `clean-up` namespace. This is a routine cluster maintenance task to free up resources or reset a namespace.

---

## Objective

- **Action**: Delete all pods
- **Target Namespace**: `clean-up`

---

## Steps Performed

### 1. List All Pods in the Namespace

Before deletion, the list of existing pods was verified:

```bash
kubectl get pods -n clean-up
```
+ output
  ```sql
  NAME            READY   STATUS    RESTARTS   AGE
  test-pod-1      1/1     Running   0          3h
  test-pod-2      1/1     Running   0          2h
  ```
### 2. Delete All Pods in the Namespace
+ All pods were removed using:
  ```bash
  kubectl delete pods --all -n clean-up
  ```
---
# 🛠️ Task 10: Create a Static Pod

### Requirements
- Pod name: `nginx-static`
- Image: `nginx:alpine`
- Label: `app=nginx-static`
- Namespace: `static`
- Container port: `80`

### Steps

### 1. **Create the namespace** (if it doesn't exist):
   ```bash
   kubectl create namespace static
   ```
### 2. Access the Minikube node:
   ```bash
      minikube ssh
   ```
### 3. Create the manifest directory (if needed):
 ```bash
sudo mkdir -p /etc/kubernetes/manifests
```
### 4. Create the pod manifest:
 ```bash
sudo vi /etc/kubernetes/manifests/nginx-static.yaml
```
### 5. kubectl get pods -n static
```bash
kubectl get pods -n static
```
---
# 🛠️ Task 11: Delete a Static Pod
## 1. Access the Minikube node:
```bash
minikube ssh
```
## 2. Navigate to manifests directory:
```bash
cd /etc/kubernetes/manifests
```
## 3. Remove the pod manifest:
```bash
sudo rm nginx-static.yaml
```
