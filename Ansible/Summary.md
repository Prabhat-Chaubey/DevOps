
1. [Core Concepts and Architecture](#Core-Concepts-and-Architecture)



## Core Concepts and Architecture
In DevOps, the purpose of Ansible is to automate and streamline infrastructure and application lifecycle management. 

While Ansible and Terraform both serve automation purposes in DevOps, they serve different roles and are often used together.
- Terraform : Create an EC2 instance in AWS
- Ansible : Install Docker, deploy app on that EC2 instance

🧠 When to Use What?
✅ Terraform:
- "I want to create and manage cloud infrastructure like EC2, RDS, VPC, S3, Load Balancers."
✅ Ansible:
- "I want to install software, configure servers, and deploy applications on those resources."

🎯 Summary
- Terraform = Build the house (infrastructure)
- Ansible = Furnish and decorate the house (software and configuration)
### Explain Ansible’s architecture. What are control nodes, managed nodes, and how does Ansible achieve idempotent operations?
Focus Topics:
- [Agentless communication over SSH (or WinRM)](#Agentless-communication-over-SSH)
- [Inventory , static and dynamic and host patterns](#Inventory-,-static-and-dynamic-and-host-patterns)
- [Modules (packaged, custom) as units of work](#Modules-packaged-custom-as-units-of-work)
- [Idempotence: safe repeated executions](#Idempotence-safe-repeated-executions)
---
  #### Agentless communication over SSH

  Agentless communication means that the Ansible control node does not require any persistent software (agent) to be installed on the managed hosts. Instead, Ansible uses existing, built-in protocols to connect and execute tasks remotely

  #### Inventory , static and dynamic and host patterns
 - Ansible inventory defines which systems to manage and how to access them.
 - Static inventories are manually maintained files (INI/YAML)
 - while dynamic inventories automatically query external sources
 - Host patterns provide flexible targeting of hosts and groups for playbook execution.
The inventory serves as the foundation for all Ansible operations, enabling you to:
  - Define individual hosts or groups of hosts
  - Specify connection parameters (IP addresses, SSH keys, users)
  - Organize infrastructure into logical categories
  - Apply variables at host or group levels
**Static Inventory**
A static inventory is a manually maintained file that lists all hosts and their groupings. These files are written in either INI or YAML format and are ideal for environments where host configurations are stable and require infrequent modifications.
```
all:
  children:
    webservers:
      hosts:
        web1.example.com:
        web2.example.com:
          ansible_host: 192.168.1.11
          ansible_user: admin
      vars:
        http_port: 80
        https_port: 443
    dbservers:
      hosts:
        db1.example.com:
        db2.example.com:
          ansible_host: 10.0.0.5
```
**Dynamic Inventory**
Dynamic inventory retrieves host and group information at runtime from external systems such as cloud providers, configuration management databases, or APIs. It automatically generates an up-to-date list of hosts without manual intervention.
**Host Patterns**
Host patterns are flexible expressions that let you run commands and playbooks against specific hosts and/or groups in your inventory. They determine which managed nodes Ansible targets during execution.
---
#### Modules packaged custom as units of work
In Ansible, modules are the fundamental units of work—standalone scripts or programs that execute discrete tasks on managed hosts or via APIs. Ansible provides a rich library of packaged modules maintained within Ansible Core and Collections, while also allowing you to write custom modules in any language to address use cases not covered by built-in functionality.
Modules and plays serve distinct but complementary roles in Ansible:
-  Use modules to define individual actions.
-  Use plays (in playbooks) to group and orchestrate those actions into end-to-end automation against target hosts.
---
#### Idempotence safe repeated executions
Idempotence ensures that running the same Ansible task or playbook multiple times leaves the target system in the same desired state without unintended side effects.
---
