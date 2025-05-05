
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

```bash
# Start Minikube
minikube start

# Delete Minikube cluster
minikube delete

# Check status
minikube status
