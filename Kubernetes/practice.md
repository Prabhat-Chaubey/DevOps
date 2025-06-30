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


## 🔰 Basic Level Questions (Must-Know)

### 📌 Index

- [What is Kubernetes, and what are its main features?](#what-is-kubernetes-and-what-are-its-main-features)
- [What is a Pod in Kubernetes?](#what-is-a-pod-in-kubernetes)
- [How does Kubernetes differ from Docker?](#how-does-kubernetes-differ-from-docker)
- [What is a Deployment in Kubernetes?](#what-is-a-deployment-in-kubernetes)
- [How do you scale a Deployment?](#how-do-you-scale-a-deployment)
- [What is a Service in Kubernetes? Types of Services?](#what-is-a-service-in-kubernetes-types-of-services)
- [What is the role of kubelet and kube-proxy?](#what-is-the-role-of-kubelet-and-kube-proxy)
- [What is the function of kubectl?](#what-is-the-function-of-kubectl)
- [What is the difference between kubectl apply and kubectl create?](#what-is-the-difference-between-kubectl-apply-and-kubectl-create)
- [What is the use of ConfigMaps and Secrets?](#what-is-the-use-of-configmaps-and-secrets)

---
## ⚙️ Intermediate Level Questions (Hands-On & Use Cases)

- [How do you perform a rolling update on a Deployment?](#how-do-you-perform-a-rolling-update-on-a-deployment)
- [How can you rollback a failed Deployment?](#how-can-you-rollback-a-failed-deployment)
- [What happens when a container inside a Pod crashes?](#what-happens-when-a-container-inside-a-pod-crashes)
- [What is the difference between livenessProbe and readinessProbe?](#what-is-the-difference-between-livenessprobe-and-readinessprobe)
- [What is the purpose of namespaces in Kubernetes?](#what-is-the-purpose-of-namespaces-in-kubernetes)
- [How do you restrict a Pod from consuming too much CPU or memory?](#how-do-you-restrict-a-pod-from-consuming-too-much-cpu-or-memory)
- [Explain how you would configure a Pod with environment variables from a ConfigMap.](#explain-how-you-would-configure-a-pod-with-environment-variables-from-a-configmap)
- [How can you expose your application to the internet?](#how-can-you-expose-your-application-to-the-internet)
- [What is the difference between NodePort and LoadBalancer services?](#what-is-the-difference-between-nodeport-and-loadbalancer-services)
- [How do you inspect logs of a failed Pod?](#how-do-you-inspect-logs-of-a-failed-pod)

---

## 🧠 Advanced Level Questions (Architecture, Design & Debugging)

- [Explain the complete lifecycle of a Pod.](#explain-the-complete-lifecycle-of-a-pod)
- [How does the Kubernetes scheduler decide where to place a Pod?](#how-does-the-kubernetes-scheduler-decide-where-to-place-a-pod)
- [What are taints and tolerations?](#what-are-taints-and-tolerations)
- [What are node selectors and affinity rules?](#what-are-node-selectors-and-affinity-rules)
- [What is a StatefulSet? When would you use it over a Deployment?](#what-is-a-statefulset-when-would-you-use-it-over-a-deployment)
- [What is a DaemonSet and where is it used?](#what-is-a-daemonset-and-where-is-it-used)
- [What is the difference between Ingress and LoadBalancer?](#what-is-the-difference-between-ingress-and-loadbalancer)
- [How does Kubernetes handle service discovery?](#how-does-kubernetes-handle-service-discovery)
- [What is a Headless Service and when would you use one?](#what-is-a-headless-service-and-when-would-you-use-one)
- [How do you upgrade your Kubernetes cluster?](#how-do-you-upgrade-your-kubernetes-cluster)

---

## 🔐 Security & Access Control

- [What is RBAC in Kubernetes? Explain Roles and RoleBindings.](#what-is-rbac-in-kubernetes-explain-roles-and-rolebindings)
- [How do you restrict access to a specific namespace?](#how-do-you-restrict-access-to-a-specific-namespace)
- [How do you ensure that a Secret is not exposed in plain text?](#how-do-you-ensure-that-a-secret-is-not-exposed-in-plain-text)
- [What is a ServiceAccount?](#what-is-a-serviceaccount)
- [What are NetworkPolicies in Kubernetes?](#what-are-networkpolicies-in-kubernetes)

---

## 💾 Storage Questions

- [What is the difference between a PersistentVolume and a PersistentVolumeClaim?](#what-is-the-difference-between-a-persistentvolume-and-a-persistentvolumeclaim)
- [How does dynamic provisioning of storage work in Kubernetes?](#how-does-dynamic-provisioning-of-storage-work-in-kubernetes)
- [What is a StorageClass in Kubernetes?](#what-is-a-storageclass-in-kubernetes)
- [Explain the lifecycle of a volume used in a Pod.](#explain-the-lifecycle-of-a-volume-used-in-a-pod)
- [Can multiple Pods use the same PersistentVolumeClaim?](#can-multiple-pods-use-the-same-persistentvolumeclaim)

---

## 📦 Helm and CI/CD

- [What is Helm in Kubernetes? What are its benefits?](#what-is-helm-in-kubernetes-what-are-its-benefits)
- [What are Helm charts? What is values.yaml?](#what-are-helm-charts-what-is-valuesyaml)
- [How do you deploy an application using Helm?](#how-do-you-deploy-an-application-using-helm)
- [How do you integrate Kubernetes into a Jenkins/GitLab pipeline?](#how-do-you-integrate-kubernetes-into-a-jenkinsgitlab-pipeline)
- [What is the difference between helm install and helm upgrade?](#what-is-the-difference-between-helm-install-and-helm-upgrade)

---

## 🧪 Monitoring, Troubleshooting, and Logging

- [How do you debug a Pod stuck in CrashLoopBackOff?](#how-do-you-debug-a-pod-stuck-in-crashloopbackoff)
- [How do you view metrics of Pods and Nodes?](#how-do-you-view-metrics-of-pods-and-nodes)
- [What tools do you use for monitoring a Kubernetes cluster?](#what-tools-do-you-use-for-monitoring-a-kubernetes-cluster)
- [How do you check what events happened in a namespace?](#how-do-you-check-what-events-happened-in-a-namespace)
- [How do you inspect a failed Job or CronJob?](#how-do-you-inspect-a-failed-job-or-cronjob)

---

## 🚀 High-Level Design & Best Practices

- [What would you consider when designing a Kubernetes cluster for high availability?](#what-would-you-consider-when-designing-a-kubernetes-cluster-for-high-availability)
- [How would you handle blue/green deployments in Kubernetes?](#how-would-you-handle-bluegreen-deployments-in-kubernetes)
- [How do you handle secrets management in a secure way?](#how-do-you-handle-secrets-management-in-a-secure-way)
- [How do you implement autoscaling for your applications?](#how-do-you-implement-autoscaling-for-your-applications)
- [What are some best practices for writing Kubernetes manifests?](#what-are-some-best-practices-for-writing-kubernetes-manifests)

---

## 🔄 Bonus: Real-World Scenario-Based Questions

- [You see some pods are not scheduled—how will you debug this?](#you-see-some-pods-are-not-scheduledhow-will-you-debug-this)
- [Your app is accessible via kubectl port-forward but not via NodePort service. What would you check?](#your-app-is-accessible-via-kubectl-port-forward-but-not-via-nodeport-service-what-would-you-check)
- [A deployment is stuck during rollout—how will you resolve it?](#a-deployment-is-stuck-during-rollouthow-will-you-resolve-it)
- [Your Pod starts successfully but then fails after 2 minutes. How would you debug this?](#your-pod-starts-successfully-but-then-fails-after-2-minutes-how-would-you-debug-this)
- [How would you implement multi-tenant isolation in Kubernetes?](#how-would-you-implement-multi-tenant-isolation-in-kubernetes)

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
