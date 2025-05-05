
# Kubernetes Learning Notes

## What is Kubernetes?

Kubernetes is an open-source platform for automating deployment, scaling, and management of containerized applications. 

Key features:
- Automates deployment and management of containerized apps
- Provides scaling capabilities
- Handles high traffic loads by distributing across multiple servers
- Prevents downtime through self-healing and load balancing

## Kubernetes Orchestration

Kubernetes acts as a conductor/orchestrator that controls the behavior of all container-based running applications, similar to how a band master coordinates musicians.

## Kubernetes Cluster

When we deploy Kubernetes, we get a cluster consisting of:

1. **Master Node**:
   - Uses API server to manage worker nodes
   - The control plane that makes global decisions

2. **Worker Nodes**:
   - Can be virtual or physical machines
   - Run the actual containerized applications

**Cluster**: A group of nodes (workers) managed by the master.

## Kubernetes Components

Core components include:
- API server
- Container Runtime
- ETCD (key-value store)
- Kube Proxy
- Scheduler
- Kubelet
- Kube Controller

## Administration/Architecture

Key architectural elements:
- API
- Namespaces
- PODs
- Deployments
- ReplicaSets
- StatefulSets
- DaemonSets
- Services
- Ingress Controllers
- ConfigMaps
- Secrets
- Storage
- Role Based Access Control (RBAC)
- Jobs, CronJobs
- Custom Resource Definitions (CRD)
- Helm

## PODs

- Smallest unit in Kubernetes
- An environment that runs containers inside itself
- A Pod can contain one or more containers

## Benefits of Kubernetes

- Container Orchestration
- Scalability
- Load Balancing
- High Availability
- Rollouts and Rollback capabilities

## Getting Started with Minikube

Minikube is used to learn Kubernetes without connecting to cloud services.

### Basic Commands

```
# Start Minikube
minikube start
```
```
# Delete Minikube cluster
minikube delete
```
```
# Check status
minikube status
```
### Create the Pod
```
kubectl create deployment my-ngnix --image=ngnix:latest
```
```
kubectl create deployment my-app --image=appname
```
if its in docker hub then it would take from there else we need to provide the complete path

### List all Kubernetes Deployments
```
kubectl get deployments
```
This would give the output as:
| NAME      | READY | UP-TO-DATE | AVAILABLE | AGE |
|-----------|-------|------------|-----------|-----|
| my-nginx  | 1/1   | 1          | 1         | 2m  |

Where Each column hold the information of Pod
| Column | Description |
| -------------- | ------------------------------------------------------------- |
| **NAME** | The name of the deployment (e.g., `my-nginx`) |
| **READY** | How many pods are ready vs. how many are expected (e.g., 1/1) |
| **UP-TO-DATE** | Number of pods updated to the latest deployment configuration |
| **AVAILABLE** | Number of pods available to serve requests |
| **AGE** | How long ago the deployment was created |

### List all running PODS
```
kubectl get pods
```

### Web-based UI to manage and monitor the local minikube cluster

```
minikube dashboard
```

### Provide The service
 - A Service is an abstraction that exposes a set of Pods as a network service. Even if Pods die and get replaced, the service keeps the same DNS name and IP.

- To expose a service for your application in Kubernetes, you can use the following command:

```
kubectl expose deployment my-nginx --port=80 --type=LoadBalancer
```
- In Kubernetes, Pods are temporary and dynamic — they can be killed, restarted, or rescheduled at any time. That means:
    - 🔁 **Pod IP addresses can change**: When a Pod is rescheduled or recreated, its IP address may change.
    - ❌ **You can't rely on a Pod’s IP to reach your app consistently**: Since Pods are ephemeral, their IPs are not stable.
    - 🧭 **There’s no built-in way to route traffic to your app**: Without a service, it’s difficult to ensure that traffic is routed to the correct Pod, especially when Pods are constantly changing.
- Real-World Analogy for Service Providing
- Imagine a **restaurant kitchen** (representing Pods) where cooks change daily. Customers (users) don’t remember which cook is working — they just order from the **counter** (representing the **Service**), which always knows where the cooks are.
   -  **Pods** are like the cooks: Their IPs can change or be replaced.
   -  **Services** are like the counter: They provide a stable endpoint to reliably serve customers, even if the cooks (Pods) change.


### Run pod in local browser
```
minikube service my-nginix 
```
- this command is used to access a Kubernetes service running in your Minikube cluster from your local machine's browser. When you run minikube service my-nginx, Minikube will:
 + ***Open a Tunnel/Proxy***: It starts a local proxy to the service running inside Minikube.
 + ***Open the Web Browser***: It will automatically open the service in your default web browser.
 + ***Access the Service***: You can now interact with the service (e.g., a web app like NGINX, database, etc.).

### Delete POD:
```
kubectl delete deployment my-app
```
- This command lists all the services in your Kubernetes cluster. Services in Kubernetes provide a stable network endpoint for accessing a set of Pods (containers), and they can route traffic to the appropriate Pod(s) based on the service type (e.g., ClusterIP, NodePort, LoadBalancer, etc.).
