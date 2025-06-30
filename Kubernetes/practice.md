🧩 3. Sample Kubernetes Interview Questions

## 📚 Index of Interview Questions

### ⚙️ General
- [What is Kubernetes and how does it work?](#what-is-kubernetes-and-how-does-it-work)
- [What is a Pod? Can a Pod have multiple containers?](#what-is-a-pod-can-a-pod-have-multiple-containers)
- [Difference between ReplicaSet and Deployment?](#difference-between-replicaset-and-deployment)
- [What is a DaemonSet and when do you use it?](#what-is-a-daemonset-and-when-do-you-use-it)

### 📦 Workloads
- [How do you expose a pod outside the cluster?](#how-do-you-expose-a-pod-outside-the-cluster)
- [How do you perform rolling updates and rollbacks?](#how-do-you-perform-rolling-updates-and-rollbacks)

### 🔄 Networking
- [What is the difference between ClusterIP and NodePort?](#what-is-the-difference-between-clusterip-and-nodeport)
- [Explain how Ingress works.](#explain-how-ingress-works)

### 🔐 Security
- [What is RBAC?](#what-is-rbac)
- [How do you secure secrets in Kubernetes?](#how-do-you-secure-secrets-in-kubernetes)

### 📦 Storage
- [What is the difference between a PV and a PVC?](#what-is-the-difference-between-a-pv-and-a-pvc)
- [How does Kubernetes handle dynamic storage provisioning?](#how-does-kubernetes-handle-dynamic-storage-provisioning)

### 🧪 Monitoring & Debugging
- [How do you check pod logs?](#how-do-you-check-pod-logs)
- [How do you debug a CrashLoopBackOff pod?](#how-do-you-debug-a-crashloopbackoff-pod)
- [How do you view resource usage (CPU/memory) of a pod?](#how-do-you-view-resource-usage-cpumemory-of-a-pod)

### 🚢 Advanced
- [What is a sidecar container and use case?](#what-is-a-sidecar-container-and-use-case)
- [What is a custom resource definition (CRD)?](#what-is-a-custom-resource-definition-crd)
- [Explain how a pod is scheduled on a node.](#explain-how-a-pod-is-scheduled-on-a-node)
- [How would you implement blue-green deployment?](#how-would-you-implement-blue-green-deployment)




These are essential for day-to-day Kubernetes work and are frequently asked in interviews:

| **Category**           | **Command**                                                 | **Description**                                |
|------------------------|-------------------------------------------------------------|------------------------------------------------|
| 📊 Cluster Info        | `kubectl cluster-info`                                      | View cluster info                              |
|                        | `kubectl get nodes`                                         | List all nodes in the cluster                  |
| 📦 Workloads           | `kubectl get pods`                                          | List pods in current namespace                 |
|                        | `kubectl get all`                                           | Get all resources in the namespace             |
|                        | `kubectl describe pod <pod-name>`                           | Show details of a specific pod                 |
|                        | `kubectl logs <pod-name>`                                   | View logs of a pod                             |
|                        | `kubectl exec -it <pod-name> -- bash`                       | Access container shell                         |
| 📄 Create/Apply/Delete | `kubectl apply -f <file>.yml`                               | Apply a configuration file                     |
|                        | `kubectl create -f <file>.yml`                              | Create resource from a file                    |
|                        | `kubectl delete -f <file>.yml`                              | Delete resource using file                     |
| 🧭 Namespace           | `kubectl get ns`                                            | List all namespaces                            |
|                        | `kubectl config set-context --current --namespace=<ns>`     | Set default namespace for kubectl              |
| 🚀 Deployment          | `kubectl rollout status deployment/<name>`                 | Check rollout status of deployment             |
|                        | `kubectl rollout undo deployment/<name>`                   | Rollback to previous deployment                |
|                        | `kubectl scale deployment <name> --replicas=3`             | Scale deployment to specified replicas         |
| 🛠️ Debug               | `kubectl describe node <name>`                              | Show node-level details                        |
|                        | `kubectl top pod`                                           | Show CPU/memory usage (requires Metrics Server)|
| 🔐 Config & Secrets    | `kubectl get configmap`                                     | View all ConfigMaps                            |
|                        | `kubectl get secret`                                        | View Secrets (base64 encoded)                  |


### Difference between ReplicaSet and Deployment
| Feature               | ReplicaSet                                                                 | Deployment                                                                 |
|-----------------------|-----------------------------------------------------------------------------|----------------------------------------------------------------------------|
| **Purpose**           | Maintains a stable set of pod replicas                                      | Manages ReplicaSets and provides declarative updates to pods              |
| **Update Strategy**   | No built-in support for rolling updates or rollback                         | Supports rolling updates, pause/resume, and rollback                      |
| **Abstraction Level** | Lower-level controller                                                      | Higher-level abstraction built on top of ReplicaSet                       |
| **Command Example**   | `kubectl get rs`                                                            | `kubectl rollout status deployment/<name>`                                |
| **YAML Example**      | `kind: ReplicaSet`                                                          | `kind: Deployment`                                                        |



### What is a DaemonSet and when do you use it
- A DaemonSet is a Kubernetes workload resource that ensures a specific pod runs on all (or some) nodes in the cluster.
  - Key Characteristics:
    - Runs one copy of a Pod per node.
    - Automatically adds the Pod to new nodes that are added to the cluster.
    - Removes the Pod from nodes when they are removed from the cluster.
- You use a DaemonSet when you need to run background or node-level system services on every node.

### How do you expose a pod outside the cluster
- `kubectl expose pod <pod-name> --type=NodePort --port=80`

### How do you perform rolling updates and rollbacks
- Rolling Updates:
  - `kubectl set image deployment/<deployment-name> <container-name>=<new-image>`
  - `kubectl rollout status deployment/<deployment-name>`
  - `kubectl get rs` 
- Rollback to the previous revision
  - `kubectl rollout undo deployment/<deployment-name>` 
- Rollback to a specific revision:
  - `kubectl rollout undo deployment/<deployment-name> --to-revision=2` 
- View revision history (if kubectl rollout history is available):
  - `kubectl rollout history deployment/<deployment-name>` 


### What is the difference between ClusterIP and NodePort

| Feature              | **ClusterIP**                                      | **NodePort**                                          |
|----------------------|----------------------------------------------------|--------------------------------------------------------|
| **Default Type**     | ✅ Yes                                              | ❌ No                                                  |
| **Access Scope**     | Internal only (within the cluster)                | Exposes service externally on each Node’s IP + port   |
| **External Access**  | ❌ Not accessible from outside the cluster         | ✅ Yes, using `NodeIP:NodePort`                        |
| **Use Case**         | Service-to-service communication inside cluster    | Quick external access for dev/test environments        |
| **Port Range**       | Any valid service port (e.g., 80, 8080)           | 30000–32767 (default range)                           |
| **Security**         | More secure (internal traffic only)               | Less secure (publicly exposed)                        |
| **Example Command**  | `kubectl expose deployment app --type=ClusterIP`  | `kubectl expose deployment app --type=NodePort`       |


### What is RBAC in Kubernetes
- RBAC (Role-Based Access Control) is a Kubernetes mechanism used to control access to resources based on the user’s role.
- It helps you define who can do what within your Kubernetes cluster.


### What is the difference between a PV and a PVC
| Feature               | **PersistentVolume (PV)**                                     | **PersistentVolumeClaim (PVC)**                                 |
|-----------------------|---------------------------------------------------------------|------------------------------------------------------------------|
| **Definition**         | Cluster-level storage resource                                | User request for storage                                         |
| **Created By**         | Admin (statically) or Kubernetes (dynamically)                | Developer or application                                         |
| **Purpose**            | Represents actual physical or virtual storage                 | Claims a certain amount and type of storage                      |
| **Binding**            | Gets bound to a matching PVC                                  | Gets bound to a matching PV                                      |
| **Scope**              | Cluster-wide                                                  | Namespaced                                                       |
| **Access Modes**       | Set during PV creation                                        | Requested during PVC creation                                    |
| **Reusability**        | Can be reused if `reclaimPolicy: Retain` is set               | Meant for use by a single pod/app                                |
| **Example Use Case**   | Predefined EBS volume, NFS share, or hostPath volume          | Pod requesting 1Gi of ReadWriteOnce storage                      |
