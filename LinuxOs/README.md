Create a new user devops_user with a password.
> sudo adduser devops_user
Add the user to the sudo group.
> sudo usermod -aG sudo devops_user

Create a file myfile.txt.
>touch myfile.txt/ vi myfile.txt
Change ownership to devops_user.
> sudo chown devops_user:devops_user myfile.txt
Set permission rw-r--r--.
>chmod 644 myfile.txt


Update the system.
>sudo apt update && sudo apt upgrade -y


Change your system hostname to devops-lab.
>sudo hostnamectl set-hostname devops-lab
You can verify:
>hostname
