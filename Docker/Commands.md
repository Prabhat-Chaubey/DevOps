##  Theoretical Questions

1. [What is Docker and how is it different from a Virtual Machine?](#what-is-docker-and-how-is-it-different-from-a-virtual-machine)
2. [What are Images and Containers in Docker?](#what-are-images-and-containers-in-docker)
3. [What is the use of Dockerfile?](#what-is-the-use-of-dockerfile)
4. [What is the difference between CMD and ENTRYPOINT?](#what-is-the-difference-between-cmd-and-entrypoint)
5. [What is the difference between COPY and ADD in Dockerfile?](#what-is-the-difference-between-copy-and-add-in-dockerfile)
6. [What is the purpose of .dockerignore file?](#what-is-the-purpose-of-dockerignore-file)
7. [Explain Docker volume and bind mount.](#explain-docker-volume-and-bind-mount)
8. [What is Docker Compose and when to use it?](#what-is-docker-compose-and-when-to-use-it)
9. [What is the lifecycle of a Docker container?](#what-is-the-lifecycle-of-a-docker-container)
10. [Explain Docker networking modes (bridge, host, none).](#explain-docker-networking-modes-bridge-host-none)
11. [What are layers in Docker image and how do they help?](#what-are-layers-in-docker-image-and-how-do-they-help)
12. [What is the difference between image and container?](#what-is-the-difference-between-image-and-container)
13. [How does Docker optimize image size and reuse layers?](#how-does-docker-optimize-image-size-and-reuse-layers)
14. [How do you persist data in Docker containers?](#how-do-you-persist-data-in-docker-containers)
15. [What are multi-stage builds and why are they useful?](#what-are-multi-stage-builds-and-why-are-they-useful)

## Logical & Scenario-Based Questions
1. [You changed your app code. How do you rebuild and redeploy the container?](#you-changed-your-app-code-how-do-you-rebuild-and-redeploy-the-container)
2. [Your container crashes immediately after start. How would you debug it?](#your-container-crashes-immediately-after-start-how-would-you-debug-it)
3. [You have multiple microservices. How do you set up networking between them?](#you-have-multiple-microservices-how-do-you-set-up-networking-between-them)
4. [How would you share data between two containers?](#how-would-you-share-data-between-two-containers)
5. [You get "port already in use" error. How will you resolve it?](#you-get-port-already-in-use-error-how-will-you-resolve-it)
6. [Container is not connecting to database. How would you troubleshoot?](#container-is-not-connecting-to-database-how-would-you-troubleshoot)
7. [App works locally, but fails in Docker. What will you check first?](#app-works-locally-but-fails-in-docker-what-will-you-check-first)
8. [You want to reduce image size. What strategies will you apply?](#you-want-to-reduce-image-size-what-strategies-will-you-apply)
9. [Explain how to secure Docker containers.](#explain-how-to-secure-docker-containers)
10. [You need to schedule a backup job inside a container. How would you do that?](#you-need-to-schedule-a-backup-job-inside-a-container-how-would-you-do-that)  
## 🚀 Docker Commands Cheat Sheet
### 🔧 Basic Docker Commands
| Command                   | Purpose                                      |
|---------------------------|----------------------------------------------|
| `docker version`          | Shows Docker client and server version       |
| `docker info`             | Displays system-wide info about Docker       |
| `docker help`             | Shows help for Docker commands               |


### 🛠️ Image Management
| Command                                       | Purpose                                       |
|-----------------------------------------------|-----------------------------------------------|
| `docker build -t <name> .`                    | Builds an image from a Dockerfile             |
| `docker images`                               | Lists all images on your system               |
| `docker rmi <image>`                          | Removes an image                              |
| `docker pull <image>`                         | Downloads an image from Docker Hub            |
| `docker tag <image> <repo>:<tag>`             | Tags an image for pushing to a registry       |
| `docker push <image>`                         | Pushes an image to Docker Hub or registry     |


### 🚀 Container Management
| Command                                            | Purpose                                        |
|----------------------------------------------------|------------------------------------------------|
| `docker run <image>`                               | Runs a container from an image                |
| `docker run -d <image>`                            | Runs in detached mode (in background)         |
| `docker run -it <image> /bin/bash`                 | Interactive terminal access                   |
| `docker ps`                                        | Lists running containers                      |
| `docker ps -a`                                     | Lists all containers (including stopped)      |
| `docker stop <container>`                          | Stops a running container                     |
| `docker start <container>`                         | Starts a stopped container                    |
| `docker restart <container>`                       | Restarts a container                          |
| `docker rm <container>`                            | Deletes a stopped container                   |
| `docker exec -it <container> <cmd>`                | Runs a command in a running container         |

### 📦 Volumes and Files
| Command                                               | Purpose                                           |
|-------------------------------------------------------|---------------------------------------------------|
| `docker volume create <name>`                         | Creates a volume                                  |
| `docker volume ls`                                    | Lists all volumes                                 |
| `docker volume rm <name>`                             | Removes a volume                                  |
| `docker cp <container>:<src> <dest>`                  | Copies files from container to host               |
| `docker cp <src> <container>:<dest>`                  | Copies files from host to container               |


### 🌐 Networking
| Command                                 | Purpose                                        |
|-----------------------------------------|------------------------------------------------|
| `docker network ls`                     | Lists Docker networks                          |
| `docker network create <name>`          | Creates a custom network                       |
| `docker network inspect <name>`         | Shows network details                          |
| `docker network rm <name>`              | Removes a network                              |
| `docker run --network <name>`           | Connects container to a specific network       |


### 📖 Docker Compose
| Command                        | Purpose                                      |
|--------------------------------|----------------------------------------------|
| `docker-compose up`           | Starts all services in docker-compose.yml    |
| `docker-compose up -d`        | Starts in detached mode                      |
| `docker-compose down`         | Stops and removes all services               |
| `docker-compose build`        | Builds services defined in Compose file      |
| `docker-compose logs`         | Shows logs from all containers               |

### 🧹 Cleanup Utilities
| Command                        | Purpose                                      |
|--------------------------------|----------------------------------------------|
| `docker system prune`          | Removes unused containers, networks, images  |
| `docker container prune`       | Removes all stopped containers               |
| `docker image prune`           | Removes dangling images                      |



### Explain Docker volume and bind mount
- In Docker, volumes and bind mounts are two ways to persist data outside a container’s writable layer, allowing data to survive container restarts or rebuilds.
  - Docker Volume :
    - A Docker-managed storage location stored under `/var/lib/docker/volumes/`
    - Data is isolated from host file system
    - Ideal for production use and sharing data between containers
    - How to Use:
    - # Create a volume
    - `docker volume create mydata`
    - # Use it in a container
    - `docker run -v mydata:/app/data my-image`
  - Bind Mount :
    - Maps a specific file or directory from the host system directly into the container.
    - Points to an absolute path on the host
    - Useful for development (live updates from code changes)
    - How to Use:
    - `docker run -v /path/on/host:/app/data my-image`

    

### What is Docker Compose and when to use it
- Docker Compose is a tool that allows you to define and manage multi-container Docker applications using a YAML file `(docker-compose.yml)`
- Define and run multiple services (e.g., app, database, cache) together
- Define containers, volumes, networks, and environment in one YAML file
- Easily simulate production with mock services or databases


### What is the lifecycle of a Docker container
- The `Docker container lifecycle` defines the various states a container goes through from creation to termination.
- create: `docker create my-image`
- start : `docker start container_id`
- run : `docker run my-image`
- poause : `docker pause container_id`
- unpause : `docker unpause container_id`
- stop : `docker stop container_id`
- kill : `docker kill container_id`
- rm : `docker rm container_id`
- listall : `docker ps -a`
