1. How do you initialize a new Git repository in a directory?
 - > git init


2. What does the git status command do?
- The git status command shows the current state of the working directory and staging area.
  - >git status

3. How do you add a file to the staging area in Git?
- > git add <filename>

Q4: What command would you use to commit your changes to the repository?
- > git commit -m "Your commit message"

# Branching

1. How do you create a new branch in Git?
> git branch <branch_name>
> git checkout -b feature/login

2 What does the git checkout command do when used with a branch name?

3 How can you list all the branches in your Git repository?

4 How do you merge a branch into the current branch?
>git merge <branch_name>

# Remote Repositories 

1. How do you add a remote repository in Git?
  > git remote add origin https://github.com/username/repository.git


3. What command would you use to push your changes to a remote repository?
   > git push origin main


5. How do you pull the latest changes from a remote repository into your local repository?
   > git pull origin main


7. How do you clone a repository from a remote source (e.g., GitHub)?
   > git clone https://github.com/username/repository.git
