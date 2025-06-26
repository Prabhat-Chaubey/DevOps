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
  
  




### ✅ Git Interview Questions & Answers (Basic to Intermediate)

---

#### 🔰 Basics of Git (1–25)

1. **What is Git, and why is it used?**
   Git is a distributed version control system used to track changes in source code and coordinate work among developers.

2. **What is version control?**
   A system to record changes to files over time so specific versions can be recalled later.

3. **What is the difference between Git and GitHub?**
   Git is a local version control system. GitHub is a remote hosting platform for Git repositories.

4. **How do you initialize a Git repository?**
   `git init`

5. **What does `git clone` do?**
   Clones a remote repository into a new directory locally.

6. **What is the purpose of `git status`?**
   Displays the state of the working directory and staging area.

7. **What is the difference between `git add` and `git commit`?**
   `git add` stages changes, `git commit` saves the staged changes to the repo.

8. **How do you check commit history?**
   `git log`

9. **How do you check differences between commits?**
   `git diff <commit1> <commit2>`

10. **How do you stage a specific file?**
    `git add <filename>`

11. **How do you stage all files?**
    `git add .`

12. **How do you commit with a message?**
    `git commit -m "message"`

13. **How do you rename a file in Git?**
    `git mv oldname newname`

14. **How do you delete a file and track its removal?**
    `git rm <filename>`

15. **What is the working directory in Git?**
    The local directory where you work on files.

16. **What is the staging area in Git?**
    A file that lives in your `.git` directory which acts as a middle ground between working directory and repository.

17. **What is a commit object?**
    A snapshot of your staged changes with a unique hash, message, and metadata.

18. **What are HEAD and origin in Git?**
    HEAD points to the current branch/ref; origin is the default name for a remote repo.

19. **How do you undo the last commit (before push)?**
    `git reset --soft HEAD~1`

20. **What does `git log --oneline` show?**
    A compact view of commit history.

21. **What is `.gitignore` used for?**
    To exclude files/folders from being tracked by Git.

22. **How do you ignore a file that's already tracked?**
    Remove it from tracking: `git rm --cached <file>`

23. **How do you remove a file from staging?**
    `git reset <file>`

24. **What is the `.git` folder?**
    The internal data storage area for all Git information.

25. **How do you check the current branch?**
    `git branch`

---

#### 🌱 Branching & Merging (26–50)

26. **How do you create a new branch?**
    `git branch <branch-name>` or `git checkout -b <branch-name>`

27. **How do you switch between branches?**
    `git checkout <branch-name>`

28. **How do you delete a branch?**
    `git branch -d <branch-name>`

29. **What is a merge in Git?**
    Combines changes from one branch into another.

30. **What is the difference between `git merge` and `git rebase`?**
    Merge keeps the commit history; rebase makes it linear.

31. **What is a fast-forward merge?**
    When no new commits diverged; Git moves the branch pointer forward.

32. **What is a three-way merge?**
    Used when branches have diverged; Git uses a common ancestor.

33. **How do you resolve a merge conflict?**
    Edit the conflicting files, then `git add`, and `git commit`.

34. **How do you view merge conflicts?**
    `git status` and open conflicting files.

35. **How do you abort a merge?**
    `git merge --abort`

36. **What is the `git diff` command used for?**
    To show file differences not yet staged.

37. **What is the difference between `git diff` and `git status`?**
    `git diff` shows line changes; `git status` shows file-level changes.

38. **How do you compare two branches?**
    `git diff branch1..branch2`

39. **How do you squash commits?**
    `git rebase -i HEAD~n` and choose `squash`

40. **How do you rebase a branch onto another?**
    `git rebase main`

41. **What is an interactive rebase?**
    A rebase with manual control: `git rebase -i`

42. **How do you stash uncommitted changes?**
    `git stash`

43. **How do you apply stashed changes?**
    `git stash pop`

44. **How do you delete a stash?**
    `git stash drop`

45. **How do you name a stash?**
    `git stash save "message"`

46. **What does `git checkout -- <file>` do?**
    Restores file to last committed state.

47. **How do you restore a deleted file from the last commit?**
    `git checkout HEAD <file>`

48. **How do you create and track a remote branch?**
    `git push -u origin <branch>`

49. **What is `git branch -r`?**
    Lists remote-tracking branches.

50. **What is a detached HEAD state?**
    When HEAD points to a specific commit, not a branch.

---

➡️ *Due to message length limits, I’ll continue with Q51–100 in the next response. Do you want the rest now or in a downloadable format (PDF)?*
### ✅ Git Interview Questions & Answers (Basic to Intermediate)

---

#### 🔰 Basics of Git (1–25)

\[...Existing Q1–50 Content...]

---

#### 🌐 Remote Repositories & Collaboration (51–75)

51. **What does `git remote` show?**
    Lists the remotes associated with the repository.

52. **How do you add a remote?**
    `git remote add <name> <url>`

53. **How do you remove a remote?**
    `git remote remove <name>`

54. **What does `git fetch` do?**
    Downloads objects and refs from another repository.

55. **What does `git pull` do?**
    Fetches from the remote and merges it into the current branch.

56. **Difference between `git pull` and `git fetch`?**
    `fetch` only downloads data; `pull` also merges it.

57. **How do you push to a remote branch?**
    `git push origin <branch-name>`

58. **How do you push a local branch to a different name in remote?**
    `git push origin <local-name>:<remote-name>`

59. **How do you delete a remote branch?**
    `git push origin --delete <branch>`

60. **How do you rename a remote?**
    `git remote rename <old> <new>`

61. **What is `origin` and `upstream`?**
    `origin` is your cloned remote; `upstream` is the original repo you forked from.

62. **How do you sync your fork with the upstream?**
    Add upstream remote and use `git fetch upstream && git rebase upstream/main`

63. **How do you set a remote tracking branch?**
    `git branch --set-upstream-to=origin/<branch>`

64. **How do you check if your branch is tracking a remote?**
    `git status` or `git branch -vv`

65. **What is `git push --set-upstream`?**
    It sets the upstream tracking branch for the current local branch.

66. **How do you view remote branches?**
    `git branch -r`

67. **How do you compare your branch with a remote branch?**
    `git diff origin/<branch>`

68. **How do you resolve a conflict during pull?**
    Manually resolve files, then `git add`, `git commit`

69. **How do you view commit differences between local and remote?**
    `git log HEAD..origin/<branch>`

70. **How do you prevent someone from pushing to main?**
    Use branch protection rules in GitHub/GitLab.

71. **What are protected branches in GitHub?**
    Branches that cannot be force-pushed or deleted and may require PR reviews.

72. **How do you fork and contribute to a public project?**
    Fork the repo, clone it locally, push changes, and raise a PR.

73. **How do you raise a pull request?**
    Push your changes and use the platform (GitHub/GitLab) to create a PR.

74. **What happens when your PR gets merge conflicts?**
    You must resolve conflicts locally and push again.

75. **How do you update your feature branch with the latest `main`?**
    `git checkout feature && git pull origin main --rebase`

---

#### 🧠 Git Internals & Advanced Concepts (76–90)

76. **What is the structure of a Git commit?**
    It contains a snapshot of changes, author info, message, and parent commits.

77. **How does Git store files internally?**
    As blobs (binary large objects) and trees.

78. **What is a blob, tree, and commit object?**
    Blob = file data; Tree = directory structure; Commit = snapshot + metadata.

79. **What is `git reflog`?**
    Tracks changes to the tip of branches and allows recovery of lost commits.

80. **How do you recover a deleted commit?**
    Use `git reflog` to find the commit and `git checkout <commit>`.

81. **What is `git cherry-pick`?**
    Applies a specific commit from one branch onto another.

82. **What is `git revert` and how is it different from `git reset`?**
    `revert` creates a new commit to undo a previous one; `reset` rewrites history.

83. **What is a tag in Git? How do you create one?**
    A tag marks a specific point in history. Use `git tag <name>`.

84. **Difference between lightweight and annotated tags?**
    Lightweight = just a pointer; Annotated = full metadata + message.

85. **How do you push a tag to remote?**
    `git push origin <tag>` or `git push --tags`

86. **How do you delete a tag locally and remotely?**
    Local: `git tag -d <tag>`
    Remote: `git push origin --delete <tag>`

87. **What is `git bisect` and when would you use it?**
    Binary search tool to find a faulty commit.

88. **What is `git archive`?**
    Creates a tar or zip of the source tree.

89. **What is the difference between `git clean` and `git reset --hard`?**
    `git clean` removes untracked files, `reset --hard` resets tracked files.

90. **What are Git hooks and how are they used?**
    Custom scripts triggered by Git events like commit, push, etc.

---

#### 🛠 DevOps-Specific Scenarios (91–100)

91. **How do you integrate Git with Jenkins or any CI/CD tool?**
    Use Git plugins or webhooks to trigger jobs on code changes.

92. **Why is `git shallow clone` used in CI/CD pipelines?**
    To clone only the latest commit, improving speed and resource usage.

93. **How do you configure Git to use HTTPS or SSH?**
    Set remote URLs and manage credentials with `git config` or SSH keys.

94. **What is `.gitlab-ci.yml`?**
    A GitLab configuration file that defines CI/CD pipelines.

95. **How do you use tags in Git to mark deployment versions?**
    `git tag v1.0.0` and `git push origin v1.0.0`

96. **What is the purpose of commit messages in automated builds?**
    They can trigger specific actions or help in tracking deployments.

97. **How do you prevent committing secrets in Git?**
    Use `.gitignore`, `git-secrets`, or Git hooks.

98. **What is the best way to rollback a deployed commit?**
    Revert the commit using `git revert` and redeploy.

99. **How can Git be used in Infrastructure as Code workflows?**
    Track infrastructure scripts (like Terraform) and use PR reviews + pipelines.

100. **What is the difference between `git diff` in CI and local Git diff?**
     In CI, it shows changes between pipeline states; locally, between working and staged changes.

---

✅ *You now have 100 Git questions and answers to prepare for your DevOps interview! Let me know if you'd like a downloadable PDF or a mock interview session.*
