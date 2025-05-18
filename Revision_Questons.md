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
- What are symbolic (soft) and hard links?
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
- What is the difference between `su` and `sudo`?
- How do you add a user to a group?
- What are the purposes of `/etc/passwd`, `/etc/shadow`, and `/etc/group`?
- How do you set password policies for users?
- How can you give limited sudo access to a user?

---

## Networking

- How do you check your IP address in Linux?
- How do you view open ports and listening services?
- What commands are used to test network connectivity?
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

## Contribute

Want to add more questions? Feel free to fork and open a pull request!

