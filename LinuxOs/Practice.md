- [Commonly Used Linux Commands](#commonly-used-linux-commands)
- [How do you check memory usage in Linux?](How-do-you-check-memory-usage-in-Linux?)
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


### How do you check memory usage in Linux?
 - `vmstat`: this command is used to check the memory usage in linux
