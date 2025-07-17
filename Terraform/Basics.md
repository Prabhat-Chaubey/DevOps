<pre>
  Terraform Code (.tf file)
├── provider
│   └── Define the cloud platform (AWS, Azure, GCP, etc.)
├── resource
│   └── Define what to create (VM, S3, VPC, etc.)
│       ├── type (e.g., aws_instance)
│       └── name (e.g., my_ec2)
├── variables (optional)
│   └── Input values to make code reusable
├── outputs (optional)
│   └── Show useful info after deployment (like public IP)
├── modules (optional)
│   └── Reusable templates for organized infra
└── terraform block (optional)
    └── Backend config and version settings

</pre>  

<pre>
  provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-Example-Instance"
  }
}

</pre>


- [What is a Terraform Module](#What-is-a-Terraform-Module)
- [What is a Terraform Backend](#What_is-a-Terraform-Backend)
  
**Infrastructe as a code is a way to initialize and configure resources in JSON and YAML fomrat.**
- `AWS` have thiers IAC tool named **"CLOUD FORMATION TEMPELATE"**
- `Azure` have thier IAC tool named **"Azure Resource Manager"(ARM Tempelate)**
- `Terraform` is like a universal tempelate , it takes only on eprovider and it makes the resource allocation easy

### The code Terraform Workflow consists of three Stages:
1.  Write
    - we write the `.tf` file.
3.  Init
     - we initialize the project using `terraform init` 
5.  Plan
    - we preview the changes using `terraform plan`
6.  Apply
    - we create the infrastructe using `terrafrom apply`
7.  Destroy
     - We destroy the insfrastructure using the `terraform destroy`

### What is a Terraform Module

- A module is any directory with .tf files in it.
- The root module is the current working directory where Terraform commands are run.
- You can call child modules from the root module or from other modules.

A module is just a folder with these files:

|File|	Purpose|
|----|-------|
|main.tf	|The core resource definition (e.g., EC2 instance)|
|variables.tf|	Defines what values the module expects (inputs)|
|outputs.tf	|Defines what the module gives back after creation (outputs)|
|versions.tf	(Optional)| Sets Terraform provider or required version|

---

### What is a Terraform Backend
A Terraform backend is where Terraform stores its state file `(terraform.tfstate)`.
**What is a State File?**
- Terraform keeps track of the real-world infrastructure in a file called terraform.tfstate.
- It records what resources exist, their properties, and how they map to your code.

**Types of Terraform Backends (Common Examples)**
| Backend Type   | Use Case / Description                                  |
| -------------- | ------------------------------------------------------- |
| `local`        | Default — stores state on your own machine.             |
| `s3`           | Store state in AWS S3 (with optional DynamoDB locking). |
| `azurerm`      | Stores state in Azure Blob Storage.                     |
| `gcs`          | Google Cloud Storage backend.                           |
| `consul`       | Used in HashiCorp's ecosystem.                          |
| `remote` (HCP) | Terraform Cloud or Enterprise — built-in collaboration. |
