1. [Azure DevOps Fundamentals](#azure-devOps-fundamentals)
2. [Azure Repos (Git)](#Azure-Repos-(Git))
3. [Azure Pipelines CI CD](#Azure-Pipelines-CI-CD)


---

## Azure DevOps Fundamentals
- [What is Azure DevOps What services does it provide](#What-is-Azure-DevOps-What-services-does-it-provide)
- [Difference between Azure DevOps and other CI/CD tools](#Difference-between-Azure-DevOps-and-other-CI/CD-tools)
- [Azure DevOps components](#Azure-DevOps-components)

### What is Azure DevOps What services does it provide
Azure DevOps is a DevOps platform by Microsoft that provides a complete set of tools to plan, develop, test, deliver, and monitor modern software solutions. It supports the entire software development lifecycle (SDLC) and promotes collaboration between development and operations teams.
- ### 🚀 Key Services Provided by Azure DevOps
-
| **Service**        | **Description**                                                                                                                                         |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Azure Boards**   | Work tracking system for managing projects using Agile, Scrum, or Kanban. Features: work items, backlogs, sprints, dashboards.                         |
| **Azure Repos**    | Git repositories for version control. Supports pull requests, branching, code reviews.                                                                  |
| **Azure Pipelines**| CI/CD service to build, test, and deploy apps across multiple environments and platforms (Windows, Linux, macOS).                                       |
| **Azure Test Plans**| Manual and exploratory testing tools. Supports test case management and defect tracking.                                                               |
| **Azure Artifacts**| Hosts and shares packages (NuGet, npm, Maven, Python). Integrated with Pipelines for package versioning and release.                                    |

- ### 🧩 Additional Features
    - Integration with GitHub, Slack, Jenkins, Docker, Kubernetes, etc.
    - Extensible Marketplace for adding extensions like SonarQube, Terraform, etc.
    - Role-Based Access Control (RBAC) and security policies
    - Analytics and reporting for work items and pipelines

 ### Difference between Azure DevOps and other CI/CD tools

 | Advantages                                         | Disadvantages                                      |
|---------------------------------------------------|---------------------------------------------------|
| All-in-one DevOps suite                           | Steep learning curve for beginners                |
| Seamless integration with Microsoft ecosystem     | UI can feel cluttered or slow                     |
| Supports both cloud and on-premise hosting        | Higher cost at enterprise scale                   |
| Built-in project management tools (Boards)        | Less flexible/customizable than Jenkins           |
| Fine-grained access control (RBAC)                | Limited native integration with non-Microsoft tools|
| Large extension marketplace                       | Test Plans feature not available in free tier     |
| Scalable and enterprise-ready                     | YAML pipeline debugging can be difficult          |
| Multi-platform agent support (Windows/Linux/macOS)|                                                   |
| Visual pipeline editor and rich analytics         |                                                   |

### Azure DevOps components
- Boards (Work Items, Epics, User Stories, Bugs)
- Repos (Git repositories, branching strategies)
- Pipelines (CI/CD)
- Artifacts (Package management)
- Test Plans (Manual & automated testing)

---

## Azure Repos (Git)
- [Basic Git commands](#Basic-Git-commands)
- [Branching strategy Git Flow/Trunk Based/Feature branching](#Branching-strategy-Git-Flow/Trunk-Based/Feature-branching)
- [Pull requests, merge policies, branch policies]
- [Code review process in Azure DevOps]

- ### Branching strategy Git Flow/Trunk Based/Feature branching

  ## 🌿 Git Branching Strategies

| Strategy               | Description                                                                 | Common Branches                   | Best For                              |
|------------------------|-----------------------------------------------------------------------------|-----------------------------------|----------------------------------------|
| **Git Flow**           | Structured strategy with multiple long-lived branches for release and hotfixes | `main`, `develop`, `feature/*`, `release/*`, `hotfix/*` | Enterprises with strict release cycles |
| **Trunk-Based**        | Minimal branching, frequent commits directly to `main` (or via short-lived branches) | `main` (or `master`), short-lived feature branches | Continuous Delivery, Agile teams       |
| **Feature Branching**  | Each feature is developed in its own branch and merged into main             | `main`, `feature/*`               | Teams needing isolation per feature    |


---

## Azure Pipelines CI CD
-  [YAML vs CLassic Pipeline](#YAML-vs-CLassic-Pipeline)
-  [Build Pipelines vs Release Pipelines](#Build-Pipelines-vs-Release-Pipelines)
-  [Stages,jobs,Steps,Tasks](#Stages,jobs,Steps,Tasks)
-  [Triggers](#Triggers)

### YAML vs CLassic Pipeline
## 🛠️ YAML vs Classic Pipeline in Azure DevOps

| Feature                        | YAML Pipeline                                      | Classic Pipeline (GUI)                          |
|-------------------------------|----------------------------------------------------|-------------------------------------------------|
| **Definition Type**           | Code-based (`azure-pipelines.yml`)                | UI-based (drag-and-drop interface)              |
| **Source Control Integration**| Stored with code in Git repo                      | Stored in Azure DevOps project                  |
| **Version Control**           | Fully version-controlled                          | Not version-controlled                          |
| **Portability**               | Easily reusable across projects/repos             | Not easily portable                             |
| **Review Process**            | PR review enabled for pipeline changes            | No PR review for pipeline config                |
| **Flexibility & Customization**| High – full control via code                     | Limited to available UI options                 |
| **Multi-stage Support**       | Supported (build, test, deploy in one YAML file)  | Supported, but less structured                  |
| **Learning Curve**            | Steeper (requires YAML knowledge)                 | Easier for beginners                            |
| **Best For**                  | DevOps teams, CI/CD as code, automation at scale  | Quick setup, small teams, non-technical users   |

### ✅ Summary
- **YAML Pipeline**: Preferred for modern DevOps practices, version control, and complex workflows.
- **Classic Pipeline**: Easier to start with, suitable for smaller or UI-driven teams.


## Build Pipelines vs Release Pipelines

| Aspect                 | Build Pipeline                                 | Release Pipeline                                |
|------------------------|------------------------------------------------|--------------------------------------------------|
| **Purpose**            | Compile, build, run tests, and package code    | Deploy built artifacts to various environments   |
| **Trigger**            | Automatically on code commit (CI)             | Manual or triggered after a successful build     |
| **Format**             | YAML or Classic                                | Classic (GUI-based) only                         |
| **Focus**              | Code validation, unit tests, artifact creation | Deployment, approvals, environment management    |
| **Environments**       | Not environment-specific                       | Supports multiple environments (Dev, QA, Prod)   |
| **Approval Gates**     | Not supported directly                         | Supports pre/post-deployment approvals, gates    |
| **Artifact Usage**     | Produces artifacts                             | Consumes artifacts produced by build pipeline    |
| **Versioning**         | Applies version to artifacts                   | Deploys specific artifact versions               |
| **Best For**           | Continuous Integration (CI)                    | Continuous Delivery (CD)                         |

### ✅ Summary
- **Build Pipeline** = CI → Validate and package your code.
- **Release Pipeline** = CD → Deploy your artifacts to environments with control and approvals.


## Stages,jobs,Steps,Tasks

### 🏗️ 1. **Stage**
- Logical boundary in the pipeline (e.g., Build, Test, Deploy)
- Can contain one or more jobs
- Often mapped to environments (Dev, QA, Prod)

```yaml
jobs:
  - job: BuildJob
    steps:
      - script: echo Building...
```
###  👷 2. **Job**
- Runs on an agent
- Contains a sequence of steps
- Can run in parallel or sequentially

```yaml
jobs:
  - job: BuildJob
    steps:
      - script: echo Building...
```
### 🧩 3. **Step**
- A single task or script that runs in a job
- Steps are run sequentially inside a job
  ```yaml
  steps:
  - script: echo Hello World
  - task: CopyFiles@2
  ```

### 🛠️ 4. **Task**
- A predefined action like copying files, publishing artifacts, running tests
- Reusable and configurable
   ```yaml
   - task: PublishBuildArtifacts@1
  inputs:
    pathToPublish: '$(Build.ArtifactStagingDirectory)'
    artifactName: 'drop'
   ```

Pipeline
└── Stages
    └── Jobs
        └── Steps
            └── Tasks

