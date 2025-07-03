- [1. Azure DevOps Fundamentals](#1.-azure-devOps-fundamentals)
- [2. Azure Repos (Git)](#2.-Azure-Repos-(Git))



## 1. Azure DevOps Fundamentals
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

- ###🧩 Additional Features
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
