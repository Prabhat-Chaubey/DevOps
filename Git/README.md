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

#  Commit History
1. How do you view the commit history in a Git repository?
>git log

2. What is the difference between git log and git log --oneline?
   > git log --oneline


4. How do you undo a commit that has not been pushed to a remote repository?

# Working with Staging Area and Changes

1. What is the difference between git add and git commit?
 - Git Add : This command is used to add changes from the working directory to the staging area.
   - > git add <filename>

 -  This command is used to commit the staged changes (from the staging area) to the local repository.
   - >git commit -m "Commit message"

 
2. How do you unstage a file that was added with git add?

3. How do you discard changes in a file (i.e., revert it to the last committed state)?


# Conflict Resolution
1. What is a merge conflict in Git?
   - A merge conflict occurs when Git is unable to automatically merge changes between two branches because there are conflicting modifications in the same part of a file.

3. How do you resolve a merge conflict in Git?

4. What command do you use to view the changes causing a conflict before resolving it?
   > git diff

# Advanced Git


1. What is the difference between git rebase and git merge?
   - git merge:
     - Merges the entire history of the two branches, creating a new "merge commit" that has two parent commits.

     -Preserves the history of both branches, showing the exact sequence of commits.
   - git rebase :
      - Reapplies commits from the current branch onto the base of another branch, effectively rewriting history by creating new commits.
    
        
3. What does git cherry-pick do in Git?
 - The git cherry-pick command is used to apply a specific commit from one branch onto another branch.

   
4. How do you squash multiple commits into a single commit?

5. What is git stash, and how is it useful?
