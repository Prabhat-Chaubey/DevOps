- [Git Command Cheat Sheet](#git-command-cheat-sheet)
- [How do you resolve a conflict in Git](#how-do-you-resolve-a-conflict-in-git)
- [How do you undo a commit that hasn't been pushed yet](#how-do-you-undo-a-commit-that-hasn't-been-pushed-yet)
- [What are Git hooks](#What-are-Git-hooks)
- [How can you see the commit history](#how-can-you-see-the-commit-history)
- [How do you rename a file in Git](#How-do-you-rename-a-file-in-Git)
- [How do you create a new branch and switch to it](#How-do-you-create-a-new-branch-and-switch-to-it)
# Git Command Cheat Sheet

| Command | Description |
|---------|-------------|
| `git init` | Initializes a new Git repository. |
| `git clone <repo-url>` | Clones a remote repository to your local machine. |
| `git status` | Shows the status of changes (staged, unstaged, untracked). |
| `git add <file>` | Stages specific files for commit. |
| `git add .` | Stages all changed files. |
| `git commit -m "message"` | Commits staged changes with a message. |
| `git push` | Pushes committed changes to a remote repo. |
| `git pull` | Fetches and merges changes from the remote repo. |
| `git fetch` | Downloads changes from the remote repo but doesn’t merge. |
| `git merge <branch>` | Merges another branch into the current branch. |
| `git checkout <branch>` | Switches to another branch. |
| `git checkout -b <branch>` | Creates and switches to a new branch. |
| `git branch` | Lists all branches. |
| `git branch -d <branch>` | Deletes a branch. |
| `git log` | Shows the commit history. |
| `git diff` | Shows changes between commits or working directory. |
| `git revert <commit>` | Reverts a specific commit. |
| `git reset --hard <commit>` | Resets to a previous commit (destructive). |
| `git stash` | Temporarily saves changes that are not ready to commit. |
| `git stash pop` | Applies and removes the last stashed changes. |
| `git remote -v` | Lists remote URLs associated with the repo. |

### How do you resolve a conflict in Git
- You can use `git status` to identify conflicting files and manually resolve them by editing. After resolving, use `git add` followed by `git commit`.
- Note: `git diff` helps view the conflict but doesn't resolve it.


### How do you undo a commit that hasn't been pushed yet
- You can use `git reset --soft HEAD~1` (keeps changes staged), or `git reset --hard HEAD~1` (discards changes completely). `git revert` is used for pushed commits.


### What are Git hooks
-  Git hooks are custom scripts that run before or after Git events (like commit, push). Used for automation like enforcing formatting or running tests.


### How can you see the commit history
- `git log branch name`

### How do you rename a file in Git
- `mv currentname tobechagedname`

### How do you delete a file in Git and commit the change
- `git rm file1.`

### How do you create a new branch and switch to it
- `git branch new_branch`
- `git checkout new_branch`
- `git switch new_branch`
  
  
