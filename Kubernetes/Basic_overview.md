
# Kubernetes Learning Notes

## 1. What is Kubernetes?

Kubernetes is an open-source platform for automating deployment, scaling, and management of containerized applications. 

Key features:
- Automates deployment and management of containerized apps
- Provides scaling capabilities
- Handles high traffic loads by distributing across multiple servers
- Prevents downtime through self-healing and load balancing

## 2.Kubernetes Orchestration

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
### Listing Nodes
 - To view all nodes in your Kubernetes cluster, you can use the
 -  ```
    kubectl get nodes
    ```
   - Command. Adding the -o wide option will give you more detailed information, such as the internal and external IP addresses of the nodes, the operating system image, the kernel version, and the container runtime version used on each node.

### Describing a Node
 - For a more detailed view of a specific node, use the
 -  ```
    kubectl describe node NODE_NAME
    ```
   - command. This provides additional information such as labels, annotations, taints, a list of running pods on that node, allocated resources, and recent events related to that node.

### Draining a Node
 - When you need to perform maintenance on a node (such as installing updates or software), it's best to first drain the node. Draining means safely evicting all the pods from the node so that it can be updated without affecting the workload. You can do this using the command
 -  ```
    kubectl drain NODE_NAME
    ```


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
## Namespaces in Kubernetes
### What is a Namespace?
A namespace in Kubernetes is a way to divide cluster resources between multiple virtual clusters. In simple terms, it's like having separate compartments or environments inside a single Kubernetes cluster. You can use namespaces to logically separate and manage different sets of resources, such as development, testing, and production environments.
When you use 
- ```
  kubectl get namespaces
  ```
  you will typically see four default namespaces:
-  + default – used when no other namespace is specified.
-  + kube-system – used by Kubernetes system components.
-  + kube-public – generally readable by all users.
-  + kube-node-lease – used for node heartbeats.
- Most user-created resources live in the default namespace unless you specify otherwise.
 ### Why Use Namespaces?
 Namespaces are useful for:
 + Organizing resources into logical groups (e.g., all database-related resources in one namespace, monitoring tools in another).
+ Controlling access using role-based access control (RBAC).
+ Limiting resource usage by setting resource quotas (CPU, memory).
+ Improving clarity and manageability in large clusters with many components.
+ Over time, if all resources are created in the default namespace, it can become cluttered and difficult to manage. Using namespaces helps avoid this issue.

### Creating a Namespace
To create a namespace from the command line, use:
- ```
  kubectl create namespace my-namespace
  ```
You can also create a namespace using a configuration (YAML) file:
- ```
   apiVersion: v1
    kind: Namespace
   metadata:
   name: my-namespace
  ```
then apply is using the :
- ```
  kubectl apply -f namespace.yaml
  ```
  Using Resources Within a Namespace
When creating resources like ConfigMaps, Secrets, or Deployments, you can associate them with a namespace in two ways:
Add the ```--namespace=my-namespace``` flag while applying the resource

### Best Practices for Namespaces
- Each namespace should have its own ConfigMaps and Secrets.
- Some components in Kubernetes are global and not bound to a namespace. These include:
   - Nodes
   - Persistent Volumes
### Making a Namespace the Default (Using kubens)
- If you're working within a specific namespace frequently, it becomes repetitive to specify --namespace=my-namespace every time. Kubernetes doesn’t offer a built-in way to set a default namespace per session, but you can use a tool called kubens to make namespace switching easier.
- Once installed, simply run ```kubens``` to list all namespaces, and use:
- ```kubens my-namespace```
- This command changes the current context to use my-namespace by default, so all subsequent kubectl commands will target that namespace unless otherwise specified.

  
## PODs

- Smallest unit in Kubernetes
- An environment that runs containers inside itself
- A Pod can contain one or more containers

## 📦 ReplicaSet in Kubernetes

A **ReplicaSet** is a Kubernetes controller that ensures a specified number of pod instances are running at all times in a cluster. It provides fault tolerance and scalability by maintaining pod replicas even if some fail or get deleted.

---

### ✅ Key Features

- Ensures the **desired number of pod instances** are always running.
- Automatically **replaces failed or deleted pods**.
- Supports **scaling up/down** the number of pods.
- Enhances **high availability**, **load balancing**, and **auto-recovery**.

---

### 🚀 Why Use ReplicaSets?

| Feature        | Description                                                                 |
|----------------|-----------------------------------------------------------------------------|
| **Reliability** | Prevents application downtime by recreating failed pods.                   |
| **Load Balancing** | Distributes incoming traffic across multiple pod instances.            |
| **Scaling**     | Dynamically adjusts the number of pods based on demand or configuration.   |

---

### 🔁 Relationship with Other Kubernetes Resources

```text
Deployment → ReplicaSet → Pod(s)
```

## 🗃️ StatefulSets in Kubernetes

A **StatefulSet** is a Kubernetes controller designed specifically for managing **stateful applications**. These are applications that maintain **state information** — such as logs, session data, or user interactions — even after a restart or rescheduling.

---

### 🔄 What is a Stateful Application?

A **stateful application** is one that keeps track of the interactions, data, or changes it processes over time. Examples include:

- Databases (e.g., MySQL, PostgreSQL)
- Distributed caches (e.g., Redis, ZooKeeper)
- Messaging systems (e.g., Kafka)

In contrast, **stateless applications** do not retain data between sessions and can be deployed and destroyed freely without impacting system consistency.

---

### ⚙️ When to Use StatefulSets

- When you need **stable, unique network identifiers** per Pod.
- When each Pod needs to maintain **persistent storage** across restarts.
- When **ordered deployment, scaling, and termination** is necessary.
- When **only one pod** (the master) should be allowed to write to a shared resource while others act as slaves.

---

### 📊 Deployment vs. StatefulSet

| Feature                     | `Deployment` (Stateless)        | `StatefulSet` (Stateful)             |
|----------------------------|----------------------------------|--------------------------------------|
| **Pod Identity**           | Random                           | Sticky & Unique (e.g., pod-0, pod-1) |
| **Storage**                | Shared or ephemeral              | Persistent volume per pod            |
| **Scaling**                | Any order                        | Ordered (1, 2, 3...)                 |
| **Pod Replacement**        | Random                           | Identical pod name restored          |
| **Use Case**               | Web servers, APIs, microservices | Databases, queues, clustered systems |

> ⚠️ **Why Identity Matters**:  
When multiple Pods try to write to shared data, inconsistency may arise. StatefulSets allow only **one pod (master)** to perform such writes while others (slaves) read or remain passive, maintaining consistency and reliability.

---

### 🧪 Example Use Case

Deploying a clustered database like Cassandra, Kafka, or MongoDB that requires:

- Unique Pod names
- Persistent volume claims (PVCs)
- Pod startup/shutdown in a defined order

---

### 📝 Summary

- Use `StatefulSet` for **stateful, ordered, and identity-aware workloads**.
- Use `Deployment` for **stateless and scalable workloads**.
- Always ensure **proper volume management and configuration** when working with StatefulSets.
---
## 🌐 Kubernetes Services

In Kubernetes, **Services** provide a stable network endpoint to access Pods. Since Pods can come and go (due to restarts, scaling, etc.), Services ensure that communication within and outside the cluster remains consistent and reliable.

---

### 🧩 Why Use Services?

- 🔁 **Stable IP Address**: Pods have dynamic IPs, but a Service has a **stable** one.
- ⚖️ **Load Balancing**: Distributes traffic across multiple Pods.
- 🔓 **Loose Coupling**: Decouples clients from Pods, simplifying discovery and communication.
- 🌍 **Access Control**: Controls access within and outside the cluster.

---

### 🧭 Types of Kubernetes Services

### 1. 📦 ClusterIP (Default)

> **Internal communication only**

- Exposes the service **internally** to other components **within the cluster**.
- Best suited for microservices that communicate with each other inside Kubernetes.

🔸 **Use Case**: Service-to-service communication (e.g., frontend to backend).

### 2. Headless service
> **Direct access to individual Pods**
> **what if client wants to communicate with specific pod**
> **pod want to talk directly**
> **so we can not choose randomly**
> **use case : stateful application like database**
- Set ClusterIP: None to create a Headless Service.
- Does not use a virtual IP, but returns the Pod IPs directly.
- Useful when the client needs to connect to individual Pods, not load-balanced traffic.

### 3. 🚪 NodePort
> **Expose Pods on a static port across all nodes**
> *this makes the external traffic access to fixed port on worker node*
- Makes the service accessible outside the cluster using NodeIP:NodePort.
- Opens a fixed port (e.g., 30000–32767) on every Node in the cluster.
- 🔸 Use Case: Basic external access to applications, useful for testing or small-scale apps.
### 4. 🌍 LoadBalancer
> **Cloud-integrated external access**
> *the service becomes accessible to the external using cloud*
- Automatically provisions an external load balancer from the cloud provider.
- Routes traffic to your app through the Service, balancing across Pods.
- 🔸 Use Case: Production-grade apps needing external access in cloud environments (GCP, AWS, Azure).
### 📌 Best Practices
- + Use ClusterIP for most internal services.
- + Use Headless with StatefulSets for databases or clustered systems.
- + Use NodePort for basic testing.
- + Use LoadBalancer for production services in cloud environments.
 
    
## **Benefits of Kubernetes**
- Set ```ClusterIP: None``` to create a Headless Service.
- Does not use a virtual IP, but returns the Pod IPs directly.
- Useful when the client needs to connect to individual Pods, not load-balanced traffic.
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
# Stop Minikube
minikube stop
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

### List all service in Kubernetes cluster
```
kubectl get services
```
- This command lists all the services in your Kubernetes cluster. Services in Kubernetes provide a stable network endpoint for accessing a set of Pods (containers), and they can route traffic to the appropriate Pod(s) based on the service type (e.g., ClusterIP, NodePort, LoadBalancer, etc.).
