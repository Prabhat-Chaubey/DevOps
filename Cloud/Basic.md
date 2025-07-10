## 📚 Table of Contents

1. [What is cloud computing? Give a real-world example](#what-is-cloud-computing-give-a-real-world-example)
2. [What are the key characteristics of cloud computing](#what-are-the-key-characteristics-of-cloud-computing)
3. [What are the different service models in cloud computing](#what-are-the-different-service-models-in-cloud-computing)
4. [Pizza-as-a-Service Analogy](#pizza-as-a-service-analogy)
5. [What are the deployment models in cloud computing](#what-are-the-deployment-models-in-cloud-computing)
6. [Cloud Deployment Models Analogy](#cloud-deployment-models-analogy)
7. [What is elasticity in cloud computing](#what-is-elasticity-in-cloud-computing)
8. [What is multi-tenancy in cloud computing](#what-is-multi-tenancy-in-cloud-computing)
9. [Name some common services provided by AWS, Azure, and GCP](#name-some-common-services-provided-by-aws-azure-and-gcp)
10. [What is a region and availability zone in cloud terms](#what-is-a-region-and-availability-zone-in-cloud-terms)
11. [How is cloud billing typically calculated](#how-is-cloud-billing-typically-calculated)
12. [What is serverless computing. Give an example](#what-is-serverless-computing-give-an-example)
13. [How do you secure secrets like API keys in the cloud](#how-do-you-secure-secrets-like-api-keys-in-the-cloud)
14. [What is the difference between vertical and horizontal scaling in cloud computing](#what-is-the-difference-between-vertical-and-horizontal-scaling-in-cloud-computing)
15. [What is a cloud region vs an availability zone? Why do cloud providers separate them](#what-is-a-cloud-region-vs-an-availability-zone-why-do-cloud-providers-separate-them)
16. [What is the shared responsibility model in cloud computing? Who is responsible for what](#what-is-the-shared-responsibility-model-in-cloud-computing-who-is-responsible-for-what)
17. [What is cloud bursting and when would you use it](#what-is-cloud-bursting-and-when-would-you-use-it)





---
### What is cloud computing? Give a real-world example.
Cloud computing is the on-demand delivery of IT resources like servers, storage, databases, networking, software, and more over the internet (“the cloud”) with pay-as-you-go pricing.
🔧 Key Points:
- You don’t need to own physical infrastructure.
- You can provision servers in minutes.
- Resources can scale up or down based on need.

🌐 Real-world example:
When you use `Google Drive` to store your documents, or `Gmail` to send emails, you're using `cloud computing`. The servers, storage, and software all run on Google's cloud infrastructure — you just access it via the internet.

---
### What are the key characteristics of cloud computing

The key characteristics of cloud computing are:
- **On-Demand Self-Service**
  - Users can provision resources like servers or storage without human interaction.
- **Broad Network Access**
  - Services are accessible over the network (typically the internet) using standard devices (e.g., laptops, mobile).
- **Resource Pooling**
  - Cloud providers use shared resources to serve multiple customers (multi-tenancy).
- **Rapid Elasticity**
  - Resources can be quickly scaled up or down as needed.
- **Measured Service (Pay-as-you-go)**
  - Usage is monitored, controlled, and billed based on consumption.
 
 ---

### What are the different service models in cloud computing
Cloud computing is categorized into three main service models:

1. **IaaS (Infrastructure as a Service)**

  - Provides virtualized computing resources over the internet.
  - You manage OS, storage, deployed applications; the provider manages hardware.
  - 🧩 Example: Amazon EC2, Azure Virtual Machines, Google Compute Engine.

2. **PaaS (Platform as a Service)**

  - Provides a platform allowing customers to develop, run, and manage applications without managing infrastructure.
  - 🧩 Example: Heroku, Google App Engine, Azure App Service.

3. **SaaS (Software as a Service)**
  - Fully managed applications delivered over the internet.
  - End users simply use the software via a browser.
  - 🧩 Example: Gmail, Microsoft 365, Dropbox.
Analogy to understand Iaas,Pass,and Sass suing the Pizza-as-a-Service analogy
#### **🍕 Pizza-as-a-Service Analogy**

| Service Model   | Who Manages What                        | Analogy Description                            |
|-----------------|------------------------------------------|------------------------------------------------|
| Traditional IT  | You manage everything                   | You make pizza from scratch at home.           |
| IaaS            | Cloud gives you the base                | You rent a pizza oven & ingredients.           |
| PaaS            | Cloud gives you dough, oven, sauce      | You just bake and add toppings.                |
| SaaS            | Cloud gives ready pizza                 | You order and eat — it's fully ready.          |

---
### What are the deployment models in cloud computing
A deployment model in cloud computing refers to how and where your cloud infrastructure is hosted and who has access to it.
It defines:
- **Who owns** the cloud resources
- Where they are **hosted** (on-premise or remote)
- How they are **managed**
- **Who uses** them (your org only vs shared with others)

| Deployment Model | Description |
|------------------|-------------|
| **Public Cloud** | Services are offered over the internet by third-party providers (like AWS, Azure, GCP). Resources are shared between multiple customers. |
| **Private Cloud** | Cloud infrastructure is used exclusively by one organization. It can be hosted on-premise or in a dedicated environment. |
| **Hybrid Cloud** | Combines both public and private clouds, allowing data and applications to be shared between them. |
| **Community Cloud** | A cloud environment shared between organizations with similar requirements (e.g., government, education, or banking sectors). |


#### 🏠 Cloud Deployment Models Analogy

| Deployment Model | Analogy                                              |
|------------------|------------------------------------------------------|
| **Public Cloud** | Renting an apartment in a shared building 🏢         |
| **Private Cloud**| Owning a villa — only you use it 🏡                  |
| **Hybrid Cloud** | Having both — a villa + a rented apartment 🏡 + 🏢     |
| **Community Cloud** | Co-owning a hostel with people from your organization 🏘️ |

---

### What is elasticity in cloud computing
Elasticity refers to the ability of a cloud system to automatically increase or decrease resources (like compute power, memory, storage) as needed — based on demand.

🔁 Example:
- An e-commerce site may get 100 users normally, but 10,000 during a sale.
- The cloud platform automatically adds servers during the spike and removes them after traffic drops.

---

### What is multi-tenancy in cloud computing
**Multi-tenancy** is a **cloud architecture principle** where a **single instance** of a software application or infrastructure **serves multiple customers (tenants)**, while keeping their data and configurations logically isolated.
**🏢 Real-World Analogy:**
- Think of a high-rise apartment building:
- Each tenant (customer) has their own apartment (data/config), but they share the same building infrastructure (hardware, network, software).

**💡 Example:**
- SaaS tools like Gmail or Salesforce use multi-tenancy to serve millions of users from a single platform.

---
### Name some common services provided by AWS, Azure, and GCP.

| Category           | **AWS**                   | **Azure**                    | **GCP**                        |
|--------------------|----------------------------|-------------------------------|-------------------------------|
| Compute            | EC2                        | Virtual Machines              | Compute Engine                |
| Storage            | S3                         | Blob Storage                  | Cloud Storage                 |
| Databases          | RDS, DynamoDB              | Azure SQL, Cosmos DB          | Cloud SQL, Firestore          |
| Container Services | ECS, EKS                   | AKS                           | GKE                           |
| Serverless         | AWS Lambda                 | Azure Functions               | Cloud Functions               |
| Networking         | VPC, Route 53              | Virtual Network               | VPC, Cloud DNS                |
| DevOps/IaC         | CloudFormation             | ARM Templates, Bicep          | Deployment Manager            |
| Monitoring         | CloudWatch                 | Azure Monitor                 | Stackdriver (Cloud Operations) |
| AI/ML              | SageMaker                  | Azure Machine Learning        | Vertex AI                     |



---
### What is a region and availability zone in cloud terms
**🌍 Region:**
- A geographic area where a cloud provider has multiple data centers.
- Each region is completely independent to ensure data sovereignty, compliance, and low latency.
---
### How is cloud billing typically calculated
**💳 Main Billing Factors:**
- Compute (e.g., EC2, VMs)
  - Billed per second, minute, or hour based on instance type (CPU, RAM).
- Storage (e.g., S3, Blob Storage)
  - Billed per GB per month, plus charges for requests and data retrieval.
- Data Transfer
  - Inbound is usually free.
  - Outbound (to internet or across regions) is billed per GB.
- Network Services
  - Load balancers, IPs, VPN, NAT gateways often have hourly or GB-based charges.
- Additional Services
  - Databases, AI/ML, monitoring tools may have usage-based or reserved pricing.

---

### What is serverless computing. Give an example

**⚙️ Serverless Computing:**
Serverless is a cloud computing model where you write and deploy code without managing the underlying infrastructure (no servers, VMs, or containers to configure).
- The cloud provider handles provisioning, scaling, patching, and maintenance.
- You only pay for actual code execution time (per request).

**🧪 Example:**
**🔹 AWS Lambda:**
  - You write a function (e.g., Python, Node.js) to process image uploads.
  - When an image is uploaded to S3, your Lambda function automatically runs.
  - You're billed only for the time the function runs, not for idle time.

**🔁 Other Serverless Options**

| Provider | Service           |
|----------|--------------------|
| AWS      | Lambda             |
| Azure    | Functions          |
| GCP      | Cloud Functions    |

**"Serverless"** is a marketing and abstraction term. It doesn’t mean “no servers at all” — it means:

  - You don’t manage the servers (provisioning, scaling, patching, OS updates).
  - You focus only on code, and the cloud provider handles the rest.
  - No infrastructure planning, load balancing, or VM lifecycle to worry about.
---
### How do you secure secrets like API keys in the cloud
Storing API keys or passwords in plain text is risky. Instead, cloud platforms offer **secure secret management services.**
| Method                             | Description                                                                 |
|------------------------------------|-----------------------------------------------------------------------------|
| **AWS Secrets Manager**            | Store and retrieve secrets programmatically with encryption and rotation   |
| **AWS Systems Manager Parameter Store** | Lightweight alternative for parameters and secrets                 |
| **Azure Key Vault**                | Securely manage keys, secrets, and certificates                            |
| **GCP Secret Manager**             | Secure secret storage with IAM-based access                                |


---
### What is the difference between vertical and horizontal scaling in cloud computing
- **Horizontal Scaling :**  Add more instances/machines to distribute the load (scale out/in).
- **Vertical Scaling :** Increase the resources (CPU, RAM) of a single machine (scale up/down).
---

### What is a cloud region vs an availability zone? Why do cloud providers separate them
|Term	|Description|
|---------|---------|
|Region	|A geographic area (like us-east-1 or Central India) that contains multiple data centers.|
|Availability Zone|	A physically isolated data center (or group of centers) within a region, designed for fault isolation.|
**Why are they separated?**
- To ensure high availability and fault tolerance.
- If one AZ fails (e.g., power outage), others in the same region can take over.

---

### What is the shared responsibility model in cloud computing? Who is responsible for what
The Shared Responsibility Model defines who is responsible for what in cloud security:
**🧠 Analogy:**
Think of renting an apartment:
  - The landlord (cloud provider) secures the building.
  - You’re responsible for locking your apartment door (your data and applications).
---

### What is cloud bursting and When would you use it
**Cloud Bursting** is when your private cloud or on-premises infrastructure is overwhelmed by **high demand**, and the extra workload **"bursts"** into the **public cloud** to handle the overflow.
**💡 When is it used?**
- For applications that normally run in a private data center, but need extra capacity during:
  - Traffic spikes
  - Seasonal usage (e.g., Black Friday, tax season)
  - Special events

**🧠 Analogy:**
  - Think of a restaurant with 20 seats (private cloud).
  - On a busy night, you rent extra chairs from a neighbor (public cloud) to seat more customers.
---
