# 🐧 Linux OS Interview Questions

A categorized list of commonly asked **Linux Operating System** interview questions — ideal for beginners and intermediate-level system admins, DevOps engineers, and IT professionals preparing for technical interviews.

---

## 📚 Table of Contents

1. [Linux Basics](#linux-basics)
2. [File System & Permissions](#file-system--permissions)
3. [Process & Service Management](#process--service-management)
4. [User & Group Management](#user--group-management)
5. [Networking](#networking)
6. [Package Management](#package-management)
7. [Logs & Monitoring](#logs--monitoring)
8. [Advanced & Scenario-Based](#advanced--scenario-based)

---
# 🖥️ Bash Interview Questions
A curated list of common **Bash shell scripting** interview questions. Perfect for Linux system administrators, DevOps engineers, and automation enthusiasts preparing for interviews or brushing up on scripting skills.

---
## 📚 Table of Contents

1. [Bash Basics](#bash-basics)
2. [Variables & Data Types](#variables--data-types)
3. [Control Flow](#control-flow)
4. [Functions](#functions)
5. [String & File Operations](#string--file-operations)
6. [Process Management](#process-management)
7. [Scripting & Automation](#scripting--automation)
8. [Debugging & Best Practices](#debugging--best-practices)
---
# 🔧 Git Interview Questions

A comprehensive list of frequently asked **Git interview questions**. Ideal for software engineers, DevOps professionals, and anyone who uses version control and is preparing for technical interviews.

---
## 📚 Table of Contents

1. [Git Basics](#git-basics)
2. [Branching & Merging](#branching--merging)
3. [Staging & Committing](#staging--committing)
4. [Undoing Changes](#undoing-changes)
5. [Remote Repositories](#remote-repositories)
6. [Rebasing & Cherry-Picking](#rebasing--cherry-picking)
7. [Tags & Releases](#tags--releases)
8. [Git Internals](#git-internals)
9. [Advanced Scenarios](#advanced-scenarios)

---
# 🐳 Docker Interview Questions

A comprehensive list of commonly asked **Docker interview questions** — ideal for DevOps engineers, cloud professionals, and software developers preparing for interviews or brushing up on containerization concepts.

---
## 📚 Table of Contents

1. [Docker Basics](#docker-basics)
2. [Images & Containers](#images--containers)
3. [Dockerfile](#dockerfile)
4. [Volumes & Data Persistence](#volumes--data-persistence)
5. [Networking in Docker](#networking-in-docker)
6. [Docker Compose](#docker-compose)
7. [Docker Registry](#docker-registry)
8. [Security & Optimization](#security--optimization)
9. [Troubleshooting & Advanced](#troubleshooting--advanced)

---
# ☸️ Kubernetes Interview Questions

This document lists the most commonly asked **Kubernetes (K8s)** interview questions — ideal for DevOps engineers, site reliability engineers, and cloud-native developers preparing for interviews or brushing up on orchestration fundamentals.

---
## 📚 Table of Contents

1. [Kubernetes Basics](#kubernetes-basics)
2. [Architecture & Components](#architecture--components)
3. [Pods & Workloads](#pods--workloads)
4. [Services & Networking](#services--networking)
5. [Configuration & Secrets](#configuration--secrets)
6. [Storage](#storage)
7. [Helm & Package Management](#helm--package-management)
8. [Security](#security)
9. [Troubleshooting & Debugging](#troubleshooting--debugging)
10. [CI/CD & Advanced Concepts](#cicd--advanced-concepts)

---

## Linux Basics 

- What is Linux and how is it different from other operating systems?
- What is the Linux kernel?
- What are the key features of Linux?
- What are some commonly used Linux distributions?
- What is the difference between Linux and Unix?
- What is the difference between a GUI and CLI in Linux?
- What is a shell and how does it work?

---

## File System & Permissions

- What is the Linux file system hierarchy?
- What are the meanings of `/etc`, `/var`, `/usr`, `/home`, and `/tmp`?
- What is the difference between absolute and relative paths?
- What are file permissions in Linux and how are they represented?
- How do `chmod`, `chown`, and `umask` work?
    - **chmod** : `Changes the permissions of a file or directory.`
    -  **chown**: `Changes the owner and/or group of a file or directory.`
    -  **umask**: `Sets the default file permissions when new files and directories are created.` 
- What are symbolic (soft) and hard links?
    - `soft`:File path
    - `hard`:File's inode 
- What is the difference between `>` and `>>` in shell redirection?

---

## Process & Service Management

- How can you view running processes in Linux?
- What is the difference between `ps`, `top`, and `htop`?
- How do you kill a process?
- What is a zombie process?
- What is the difference between foreground and background processes?
- How can you schedule tasks in Linux using `cron` and `at`?
- What is `systemd` and how does it compare with SysV init?

---

## User & Group Management

- How do you create, modify, and delete a user in Linux?
    - `sudo useradd <username>`
    - `sudo usermod [options] <username>`
    - `sudo userdel <username>` 
- What is the difference between `su` and `sudo`?
- How do you add a user to a group?
    - `sudo usermod -aG <groupname> <username>` 
- What are the purposes of `/etc/passwd`, `/etc/shadow`, and `/etc/group`?
- How do you set password policies for users?
    - `sudo chage [options] <username>` 
- How can you give limited sudo access to a user?

---

## Networking

- How do you check your IP address in Linux?
- How do you view open ports and listening services?
- What commands are used to test network connectivity?
    - `ping` : to see if its reachable
    - `curl`: Test endpoints
    - `wget`: To test downloads 
- What is the purpose of `/etc/hosts` and `/etc/resolv.conf`?
- How do you configure static IP in Linux?
- How do you restart network services?

---

## Package Management

- What is the difference between APT and YUM/DNF?
- How do you install, remove, and update packages in Debian-based and RedHat-based systems?
- How do you find which package a file belongs to?
- What are `.deb` and `.rpm` files?
- How do you add a new repository in Linux?

---

## Logs & Monitoring

- Where are system logs stored in Linux?
- How do you monitor system resources (CPU, memory, disk)?
- What does the `journalctl` command do?
- How do you check failed login attempts?
- How do you monitor disk space usage?

---

## Advanced & Scenario-Based

- How do you make a file immutable in Linux?
- What steps do you follow when SSH is not working?
- A service is not starting. How do you troubleshoot?
- How can you trace what a script or command is doing in the background?
- What are runlevels in Linux?
- How do you secure a Linux server?
- What is SELinux/AppArmor and how is it used?
- What is the difference between `kill`, `killall`, and `pkill`?

---
## Bash Basics

- What is Bash?
- How is Bash different from other shells like sh, zsh, or csh?
- How do you find your current shell?
- How do you change the default shell?
- What are some key features of Bash?

---

## Variables & Data Types

- How do you declare and access variables in Bash?
- What is the difference between `$var`, `${var}`, and `"$var"`?
- What are environment variables and how do you export them?
- What is the difference between `local` and `global` variables?
- How can you perform arithmetic operations in Bash?

---

##  Control Flow

- How do `if`, `elif`, and `else` work in Bash?
- What is the syntax for `case` statements?
- What is the difference between `while`, `until`, and `for` loops?
- How do you break or continue from a loop?
- How do you test numeric and string conditions using `[[ ... ]]` or `[ ... ]`?

---

##  Functions

- How do you define a function in Bash?
- How do you pass arguments to functions?
- How can a function return a value?
- What is the difference between `return` and `echo` in functions?

---

## String & File Operations

- How do you concatenate strings in Bash?
- How do you extract substrings from a variable?
- How do you read and write files in Bash?
- What is the use of `cut`, `awk`, `sed`, `grep`, and `tr`?
- How do you test if a file exists, is readable, or is a directory?

---

##  Process Management

- How do you run a process in the background?
- What is the difference between `&`, `nohup`, and `disown`?
- How do you get the PID of a running process?
- How do you trap signals like `SIGINT` in Bash scripts?
- How do you use `wait`, `sleep`, and `kill`?

---

##  Scripting & Automation

- How do you make a script executable?
- What is the purpose of the shebang (`#!/bin/bash`)?
- How do you read user input within a script?
- How do you pass and access command-line arguments (`$1`, `$@`, `$#`)?
- How do you handle errors in Bash scripts?
- What are exit codes in Bash? How do you check them?

---

## Debugging & Best Practices

- How do you debug a Bash script (`bash -x`)?
- How do you handle unexpected input?
- What are some best practices for writing Bash scripts?
- How do you lint or format your Bash scripts?
- How do you write portable and maintainable shell code?

---
##  Git Basics

- What is Git and how is it different from other version control systems?
- What is the difference between Git and GitHub?
- How do you check your current Git configuration?
- How do you initialize a Git repository?
- What is the `.git` directory?

---

##  Branching & Merging

- How do you create, list, and delete branches?
- What is the difference between `merge` and `rebase`?
- How do you resolve merge conflicts?
- What is a fast-forward merge?
- How do you switch between branches?
    - `git checkout <branchname>`
 

---

##  Staging & Committing

- What is the staging area in Git?
    - `Working Directory`
    - `Staging Area`
    - `Commit History` 
- What is the difference between `git add`, `git commit`, and `git push`?
- How do you write a good commit message?
- What does `git status` show?
- What does `git diff` do?
    - The git diff command shows the difference between two states of a Git repository. It's mainly used to see what changes have been made before committing. 

---

##  Undoing Changes

- How do you undo a commit that hasn’t been pushed?
- What is the difference between `git reset`, `git checkout`, and `git revert`?
    - `reset` -> Move branch pointer to a different commit
    - `git checkout` ->  Switch branches or restore files
    - `git revert` -> Create a new commit that undoes changes 
- How do you discard changes in the working directory?
- How do you recover a deleted branch or commit?
  - `git checkout -b <branch-name> <commit-hash>` 
- What is the `reflog` and how is it used?
    - shows a log of all the changes made to your local Git references  

---

##  Remote Repositories

- How do you connect to a remote repository?
    - `git remote add origin <remote_repo_url>`
    - `git remote add upstream <upstream_repo_url>` 
- What is the difference between `origin` and `upstream`?
    - `origin` - push and pull
    - `upstream` - fetch, merge, or rebase 
- How do you clone a Git repository?
    - `git clone https://github.com/your-username/repo.git` 
- What is the purpose of `git fetch` vs `git pull`?
- How do you push to a specific branch?
    - `git push <remote-name> <local-branch-name>:<remote-branch-name>`
---

##  Rebasing & Cherry-Picking

- What is rebasing and when should you use it?
- How is `git rebase` different from `git merge`?
- What is interactive rebase (`git rebase -i`)?
- How do you squash commits?
- What does `git cherry-pick` do?

---

##  Tags & Releases

- How do you create and list tags?
- What is the difference between lightweight and annotated tags?
- How do you delete a tag locally and remotely?
- How do you check out a specific tag?
- How are tags used in release workflows?

---

##  Git Internals

- What is a commit hash?
- What is the structure of a Git commit?
- What are blobs, trees, and commits in Git?
- What is an index?
- How does Git achieve version control efficiency?

---

##  Advanced Scenarios

- How do you resolve a detached HEAD state?
- What are submodules in Git?
- How do you handle large binary files in Git?
- What tools or strategies do you use for Git hooks?
- How do you deal with a corrupted repository?

---
##  Docker Basics

- What is Docker and how does it differ from a virtual machine?
    - **Docker** uses containers to share the host OS kernel, making it lightweight and fast, while a **virtual machine** includes a full operating system, which is heavier and slower. 
- What are the advantages of using Docker?
- What is the architecture of Docker?
- What is the Docker daemon and Docker client?
    - `Docker daemon`: Manages Docker containers, images, networks, volumes
    - `Docker client`: Sends commands to the Docker Daemon 
- What is the role of the Docker Engine?

---

##  Images & Containers

- What is the difference between an image and a container?
    - `image` : just the readonly dependecies and all
    - `container` : Running instance of image
- How do you list, start, stop, and remove containers?
    - `docker ps -a`
    - `docker start <container_name_or_id>`
    - `docker start <container_name_or_id>`
    - `docker rm <container_name_or_id>`
- How do you create an image from a container?
    - image -> Container
      ```bash
          docker pull ubuntu:latest
            docker run <options> <image_name> <command>
      ```
    - Container -> Image
      ```bash
      docker run -it --name mycontainer ubuntu
      ```
- How do you inspect an image or a container?
     - `docker inspect <image_name_or_id>`
- What is the difference between `docker run` and `docker start`?

---

##  Dockerfile

- What is a Dockerfile?
- What is the difference between `CMD` and `ENTRYPOINT`?
    - `CMD` and `ENTRYPOINT` both have purpose of setting the default commands which would run as soon as the contaiener stars
    - `CMD` provides which can be overwridden but not of `ENTRYPOINT`  
- What is the difference between `COPY` and `ADD`?
- What is the purpose of `EXPOSE`, `WORKDIR`, `USER`, and `ENV`?
- How do you optimize a Dockerfile for smaller image size?

---

##  Volumes & Data Persistence

- What are volumes in Docker?
    - Docker volumes are used to persist data generated or used by Docker containers. 
- How do volumes differ from bind mounts?
    - `Volumes` are more portable as they are managed by Docker and can be easily shared between containers.
    - `Bind mounts` are less portable because they depend on the specific file path on the host machine.
- How do you create, inspect, and delete volumes?
- What is a named volume vs anonymous volume?
- How can you persist data across container restarts?

---

##  Networking in Docker

- What are Docker network types (bridge, host, none)?
- How do containers communicate with each other?
    - Bridge Network (Default Network Mode)
    - Host Network
    - Custom User-Defined Networks (Preferred for Container Communication)
    - Using Docker Compose 
- What is port forwarding in Docker?
- How do you connect a container to multiple networks?
- How do you inspect and troubleshoot Docker networks?

---

##  Docker Compose

- What is Docker Compose and why is it used?
    - Docker Compose is a tool that allows you to define and manage multi-container Docker applications. 
- What is the syntax of a `docker-compose.yml` file?
- How do you start, stop, and rebuild services with Docker Compose?
    - `docker-compose <option>` 
- What is the difference between `depends_on` and `healthcheck`?
- How do you scale services in Docker Compose?
    - `- How do you scale services in Docker Compose?` 

---

##  Docker Registry

- What is Docker Hub?
- How do you push and pull images from a registry?
- What is a private Docker registry and how do you set it up?
- How do you tag an image for pushing to a registry?
- How do you authenticate with a private registry?

---

##  Security & Optimization

- What are some best practices for securing Docker containers?
- How do you scan Docker images for vulnerabilities?
- What is Docker Content Trust?
- What are multi-stage builds and how do they improve image security?
- How can you reduce Docker image size?

---

##  Troubleshooting & Advanced

- How do you debug a failing container?
- What is the difference between `docker logs`, `docker exec`, and `docker attach`?
- How do you clean up unused Docker objects?
- How do you monitor Docker containers?
- What are some common issues with Docker in production?

---
##  Kubernetes Basics

- What is Kubernetes and why is it used?
- What are the differences between Docker Swarm and Kubernetes?
- What does "container orchestration" mean?
- What is `kubectl` and how is it used?
- What are the key benefits of Kubernetes?

---

##  Architecture & Components

- What are the main components of the Kubernetes control plane?
- What is the role of kube-apiserver, etcd, controller-manager, and scheduler?
- What is a node in Kubernetes?
- What are kubelet and kube-proxy?
- What is the role of the Container Runtime Interface (CRI)?

---

##  Pods & Workloads

- What is a Pod in Kubernetes?
- What is the difference between a Pod, ReplicaSet, and Deployment?
- What is a StatefulSet and when do you use it?
- What is a DaemonSet?
- What is a Job and a CronJob?

---

##  Services & Networking

- What is a Kubernetes Service?
- What are the types of Services (ClusterIP, NodePort, LoadBalancer, ExternalName)?
- How does DNS work in Kubernetes?
- What is a Service Mesh and how does it relate to Kubernetes?
- What are Ingress and Ingress Controllers?

---

##  Configuration & Secrets

- What are ConfigMaps and how are they used?
- What are Secrets and how do they differ from ConfigMaps?
- How can you mount a Secret as a volume?
- How do you update an environment variable in a running pod?
- What is the best practice for managing sensitive data in Kubernetes?

---

##  Storage

- What is a Volume in Kubernetes?
- What is the difference between `emptyDir`, `hostPath`, and persistent volumes?
- What is a PersistentVolume (PV) and PersistentVolumeClaim (PVC)?
- What is a StorageClass?
- How does dynamic provisioning work?

---

##  Helm & Package Management

- What is Helm and why is it used?
- What is a Helm Chart?
- How do you install, upgrade, and rollback Helm releases?
- What is the difference between Helm 2 and Helm 3?
- How do you customize values in a Helm chart?

---

##  Security

- What are RBAC and its components (Role, RoleBinding, ClusterRole)?
- How do you create a Service Account and bind it?
- What is a Kubernetes NetworkPolicy?
- How do you secure communication between components in a cluster?
- What is PodSecurityPolicy (deprecated) and its successor?

---

##  Troubleshooting & Debugging

- How do you check the status of a pod?
- How do you debug a pod stuck in `CrashLoopBackOff`?
- What are common causes of a failed deployment?
- How do you view logs for a pod?
- What are events and how do you monitor them?

---

##  CI/CD & Advanced Concepts

- How do you perform zero-downtime deployments?
- What is a Blue/Green or Canary deployment in Kubernetes?
- What is the role of Kubernetes in a CI/CD pipeline?
- What is a custom resource and what is a CRD?
- What is an Operator in Kubernetes?

---
# Important `vi`/`vim` Commands

## Basic Navigation
- **Go to the beginning of the file**: `gg`
- **Go to the end of the file**: `G`
- **Go to a specific line** (e.g., line 100): `100G`
- **Move cursor up by one line**: `k`
- **Move cursor down by one line**: `j`
- **Move cursor left by one character**: `h`
- **Move cursor right by one character**: `l`
## Contribute

Want to add more questions? Feel free to fork and open a pull request!

