#### - [Commonly Used Linux Commands](#commonly-used-linux-commands)
#### - [How do you check memory usage in Linux](#how-do-you-check-memory-usage-in-linux)
#### - [How do file permissions work in Linux](#how-do-file-permissions-work-in-linux)
#### - [What is the difference between cron and at](#what-is-the-difference-between-cron-and-at)
#### - [How can you check which users are currently logged in](#how-can-you-check-which-users-are-currently-logged-in)
#### - [What is a daemon in Linux](#what-is-a-daemon-in-linux)
#### - [What is the difference between apt, yum, and dnf](#what-is-the-difference-between-apt,-yum,-and-dnf)
#### - [How to add a user and set a password in Linux](#how-to-add-a-user-and-set-a-password-in-linux)
#### - [What is the difference between > and >>]
#### - [What is the difference between su and sudo](#what-is-the-difference-between-su-and-sudo)
#### - [How do you delete a user in Linux](#how-do-you-delete-a-user-in-linux)
#### - [How do you add a user to a group](#how-do-you-add-a-user-to-a-group)
#### - [How do you create a group in Linux](#how-do-you-create-a-group-in-linux)
#### - [How do you give sudo access to a user](#how-do-you-give-sudo-access-to-a-user)
#### - [How do you change the ownership of a file](#how-do-you-change-the-ownership-of-a-file)
#### - [Service in Linux](#service-in-linux)
#### - [Add static route temporarily](#add-static-route-temporarily)
#### - [check which process is using port 8080](#check-which-process-is-using-port-8080)
#### - [Process Status](#process-status)
#### - [How do you move a file from one directory to another in Linux](#how-do-you-move-a-file-from-one-directory-to-another-in-linux)
#### - [To rename a file](#to-rename-a-file)
#### - [how to find a file with a name](#how-to-ind-a-file-with-a-name)
#### - [how to view permission](#how-to-view-permission)


# 📜 Commonly Used Linux Commands

| Command | Description | Example |
|---------|-------------|---------|
| `ls` | List files and directories | `ls -l` |
| `cd` | Change directory | `cd /var/log` |
| `pwd` | Print working directory | `pwd` |
| `mkdir` | Create a directory | `mkdir myfolder` |
| `rmdir` | Remove an empty directory | `rmdir myfolder` |
| `rm` | Remove files/directories | `rm file.txt` / `rm -r myfolder` |
| `cp` | Copy files/directories | `cp file1.txt file2.txt` / `cp -r dir1 dir2` |
| `mv` | Move or rename files/directories | `mv oldname.txt newname.txt` |
| `touch` | Create a new empty file | `touch newfile.txt` |
| `cat` | View contents of a file | `cat notes.txt` |
| `less` / `more` | View file content one page at a time | `less bigfile.log` / `more bigfile.log` |
| `head` / `tail` | View the start/end of a file | `head -n 10 file.txt` / `tail -n 10 file.txt` |
| `chmod` | Change file permissions | `chmod 755 script.sh` |
| `chown` | Change file owner | `chown user:group file.txt` |
| `df -h` | Disk usage in human-readable format | `df -h` |
| `du -sh <dir>` | Size of a directory | `du -sh /home/user` |
| `top` / `htop` | View real-time running processes | `top` / `htop` |
| `ps aux` | Show running processes | `ps aux` |
| `kill` / `killall` | Terminate processes | `kill 1234` / `killall firefox` |
| `grep` | Search text in files | `grep "error" logfile.txt` |
| `find` | Find files by name/type/etc | `find /home -name "*.txt"` |
| `tar` | Archive files | `tar -czvf archive.tar.gz myfolder/` |
| `zip` / `unzip` | Compress and extract files | `zip myfile.zip file.txt` / `unzip myfile.zip` |
| `man` | Show manual for a command | `man ls` |
| `history` | Show command history | `history` |
| `crontab` | Schedule recurring tasks | `crontab -e`<br>`0 3 * * * /path/to/script.sh` |
| `sudo` | Run a command as superuser | `sudo apt update` |
| `apt` / `yum` / `dnf` | Package managers | `sudo apt install nginx`<br>`sudo yum install httpd`<br>`sudo dnf install git` |
| `hostname` | Show or set system hostname | `hostname` / `sudo hostname new-host` |
| `ifconfig` / `ip a` | View network interfaces | `ip a` |
| `ping` | Check network connectivity | `ping google.com` |
| `scp` | Secure file transfer | `scp file.txt user@192.168.1.10:/home/user/` |
| `rsync` | Sync files/directories between systems | `rsync -avz /source/ user@host:/destination/` |


### How do you check memory usage in Linux
 - `vmstat`: this command is used to check the memory usage in linux

### How do file permissions work in Linux
 - Each file has permissions for:
   -   Owner
   -   Group
   -   Others
    `[Owner permissions] [Group permissions] [Other permissions]`
    `chmod 700 file.txt`

 ### What is the difference between cron and at
 - `cron`: Schedules recurring tasks.
 - `crontab -e`
 - `0 2 * * * /home/user/backup.sh` 
 - `at`: Schedules a one-time task.
 - `echo "shutdown now" | at 17:00`


### How can you check which users are currently logged in
 - `who`

### What is a daemon in Linux
 - A daemon is a background process that starts during boot and continues running (e.g., `sshd`, `crond`, `httpd`).

### What is the difference between apt, yum, and dnf
 - These are package managers:
 - `apt` for Debian-based systems (Ubuntu)
 - `yum` and `dnf` for RedHat-based systems (CentOS, Fedora)

### How to add a user and set a password in Linux
- `sudo adduser username`
- `sudo passwd username`

### What is the difference between su and sudo
- `su`: Switches user (defaults to root), starts a new shell.
    - `su - username`
- `sudo`: Executes a single command with elevated privileges without switching the user.

### How do you delete a user in Linux
- `sudo userdel username `

### How do you add a user to a group
-  `sudo usermod -aG groupname username` 

 
### How do you create a group in Linux
- `sudo groupadd groupname`

### How do you give sudo access to a user
- `sudo usermod -aG sudo username`

### How do you change the ownership of a file
-  `sudo chown user:group file`

### Service in Linux
- `sudo systemctl start <service-name>`
- `sudo systemctl stop <service-name>`
- `sudo systemctl restart <service-name>`
- `systemctl list-units --type=service`
- `sudo systemctl enable <service-name>` : this allow to start on boot
- `sudo systemctl disable <service-name>` : this allows to not start at boot

###  check which process is using port 8080
- `sudo ss -tulpn | grep 8080` 

### Process Status
- `ps -e / -A`

### How do you move a file from one directory to another in Linux
- `mv <source> <destination>` : to move the file
- `cp [options] source destination` : to copy the file
- `scp [options] source destination` : for different vms orsystems

### To rename a file
- `mv oldname newname`

### how to find a file with a name
- `find /path -name "filename"`

### how to view permission
- `ls -l`

### Cron format
- `min hour day month weekday command`
- `0 5 * * *`

### Add static route temporarily
- `ip route add 192.168.X.X/24 via GATEWAY`



## ✅ Linux Interview Q\&A Cheat Sheet (100 Questions)

### 🔹 Basic Commands

1. How to check disk space in human-readable format? → `df -h`
2. How to check memory usage? → `free -h` or `top`
3. How to check CPU usage? → `top` or `htop`
4. How to find current directory? → `pwd`
5. How to list all files including hidden ones? → `ls -la`
6. How to create a new file? → `touch filename`
7. How to create a new directory? → `mkdir dirname`
8. How to move/rename a file? → `mv oldname newname`
9. How to copy a file? → `cp source destination`
10. How to remove a file? → `rm filename`
11. How to remove a directory? → `rm -r dirname`
12. How to display the contents of a file? → `cat file`
13. How to count lines in a file? → `wc -l filename`
14. How to search a string in files? → `grep 'text' filename`
15. How to find a file by name? → `find / -name "filename"`
16. How to view command history? → `history`
17. How to repeat last command? → `!!`
18. How to shutdown the system? → `sudo shutdown now`
19. How to reboot the system? → `sudo reboot`
20. How to schedule reboot in 5 mins? → `sudo shutdown +5`

### 🔹 File Permissions & Ownership

21. How to check file permissions? → `ls -l`
22. What does `chmod 755 file` do? → rwxr-xr-x
23. How to give execute permission to a script? → `chmod +x script.sh`
24. How to remove all permissions from a file? → `chmod 000 file`
25. How to give RWX to owner and RX to others? → `chmod 755 file`
26. How to change owner of a file? → `sudo chown user file`
27. How to change owner and group? → `sudo chown user:group file`
28. What does `rwsr-xr-x` mean? → SUID bit is set
29. How to change group only? → `chgrp group file`
30. How to set read-only for all? → `chmod 444 file`

### 🔹 User & Group Management

31. How to create a user? → `sudo useradd username`
32. How to create user with home directory? → `sudo useradd -m username`
33. How to delete a user and home directory? → `sudo userdel -r username`
34. How to switch to another user? → `su - username`
35. How to check current user? → `whoami`
36. How to check users logged in? → `who` or `w`
37. How to add user to a group? → `sudo usermod -aG group user`
38. How to list groups of a user? → `groups username`
39. How to create a group? → `sudo groupadd groupname`
40. How to delete a group? → `sudo groupdel groupname`

### 🔹 Package Management (Debian/Ubuntu)

41. How to update package list? → `sudo apt update`
42. How to upgrade installed packages? → `sudo apt upgrade`
43. How to install a package? → `sudo apt install package`
44. How to remove a package? → `sudo apt remove package`
45. How to search for a package? → `apt search package`
46. What’s the difference between apt and apt-get? → `apt` is newer and user-friendly
47. How to clean apt cache? → `sudo apt clean`
48. How to list installed packages? → `dpkg -l`
49. How to check details of a package? → `apt show package`
50. How to hold a package version? → `sudo apt-mark hold package`

### 🔹 Networking

51. How to check IP address? → `ip a` or `ifconfig`
52. How to check routing table? → `ip route`
53. How to ping a host? → `ping hostname`
54. How to test if port 80 is open? → `nc -zv host 80`
55. How to test DNS lookup? → `nslookup domain`
56. How to display all open ports? → `ss -tulpn`
57. How to check internet connection? → `ping 8.8.8.8`
58. How to download a file from terminal? → `wget URL`
59. How to test latency to host? → `ping`
60. How to traceroute? → `traceroute host` or `tracepath host`

### 🔹 Process Management

61. How to see running processes? → `ps aux`
62. How to monitor real-time processes? → `top` or `htop`
63. How to kill a process by PID? → `kill PID`
64. How to force kill a process? → `kill -9 PID`
65. How to find PID of a process? → `pidof process`
66. How to send process to background? → `command &`
67. How to bring background process to foreground? → `fg`
68. How to list background jobs? → `jobs`
69. What is nice value in Linux? → Priority of a process
70. How to renice a running process? → `renice -n value -p PID`

### 🔹 Disk Management

71. How to check disk usage of filesystem? → `df -h`
72. How to check directory size? → `du -sh directory`
73. How to list mounted filesystems? → `mount` or `findmnt`
74. How to mount a device? → `mount /dev/sdX /mnt`
75. How to unmount a device? → `umount /mnt`
76. What is `/etc/fstab` used for? → Persistent mount configuration
77. How to check inode usage? → `df -i`
78. How to format a partition? → `mkfs.ext4 /dev/sdX`
79. How to label a filesystem? → `e2label /dev/sdX label`
80. What does `lsblk` do? → Lists block devices

### 🔹 Crontab & Scheduling

81. How to list user’s crontab? → `crontab -l`
82. How to edit crontab? → `crontab -e`
83. How to run a job every minute? → `* * * * * command`
84. How to run job every 5 minutes? → `*/5 * * * * command`
85. What does `0 2 * * 1` mean? → Run every Monday at 2 AM
86. How to check cron logs? → `/var/log/syslog` or `/var/log/cron`
87. How to run a job once at specific time? → `at` command
88. How to list scheduled `at` jobs? → `atq`
89. How to remove a scheduled `at` job? → `atrm job_id`
90. What is `anacron`? → Runs missed cron jobs

### 🔹 Miscellaneous & Tools

91. How to see system uptime? → `uptime`
92. How to see kernel version? → `uname -r`
93. How to see full system info? → `uname -a`
94. How to check hostname? → `hostname`
95. How to change hostname? → `hostnamectl set-hostname newname`
96. How to see logs in real-time? → `tail -f logfile`
97. How to edit file in terminal? → `nano filename` or `vi filename`
98. What is the difference between nano, vi, and vim? → nano: simple, vi: basic modal, vim: improved vi
99. How to view DNS config? → `cat /etc/resolv.conf`
100. What is the purpose of `/etc/hosts`? → Local hostname resolution
