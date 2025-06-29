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




