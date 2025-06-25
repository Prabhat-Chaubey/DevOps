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
