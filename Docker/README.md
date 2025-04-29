# 1.Docker Basics

### 1. docker build
 - Builds a Docker image from a Dockerfile
    ```
     docker build -t <image_name>:<tag> <path_to_dockerfile>
    ```
   - `<image_name>` the name you want to give your image
   - `:<tag>` version or label for the image (e.g., v1.0, prod, debug)
   - `<path>`  the directory with your Dockerfile (usually .)

### 2. docker run
-  Runs a container from an image.
    ```
     docker run [OPTIONS] <image_name>
    ```
  - Example
    ```
    docker run -d -p 5000:5000 myapp
    ```
   - `-d`  Detached mode (runs in background)
   - `-p` Port mapping (host:container)
   - `<path>`  the directory with your Dockerfile (usually .)

     
### 3. docker tag
- Creates a new tag for an existing image.
    ```
   docker tag <source_image> <target_image>

    ```
  - Example
     ```
    docker tag myapp:latest myrepo/myapp:1.0

    ```
   - `<source_image>` the name of the  image
   - `<target_image>` The new image tag , we want to give 
   - `<source_image:tag>`  if we want specific tag then we use this , else `docker tag myapp myrepo`

     
### 4. docker push
-  Pushes a tagged image to a registry like Docker Hub.
    ```
   docker push <repository/image:tag>
    ```
  - Example
     ```
    docker push myrepo/myapp:1.0
    ```


### 5. docker pull
-  Downloads an image from a Docker registry.
    ```
   docker pull <repository/image:tag>
    ```
  - Example
    ```
    docker pull python:3.12
    ```
   

     
### 6. docker inspect

-  Returns detailed information in JSON format about images, containers, etc.
    ```
   docker inspect <container_or_image_id_or_name>
    ```
  - Example
    ```
    docker inspect myapp
    ```
  
### 7. docker history
-  Shows the history of layers for an image.
    ```
   docker history <image_name>
    ```
  - Example
    ```
    docker history myapp
    ```
 

### 8. docker rmi
-  Deletes one or more Docker images.
    ```
   docker rmi <image_id_or_name>
    ```
  - Example
    ```
    docker rmi myapp:latest
    ```
   


# 2.Dockerfile Directives
### 1.FROM
 - `FROM` provides the starting environment for your application.
 - It could be a lightweight base (e.g., `alpine`) or a full OS image (e.g., `ubuntu`), or even a language/runtime environment (e.g., `python:3.12`, `node:18`).
 - A Docker container doesn't include a full OS, but it still needs a base filesystem (like libc, shell, or package managers).
 - You can create an image from scratch (empty image), but then:
   - You must manually add every binary, library, and dependency.
   - You must statically compile your app or include all runtime dependencies.

  ```
FROM alpine:3.17       # Small Linux base image
FROM nginx:1.23.3      # Specific version of NGINX
FROM scratch           # An empty image, used for minimal builds
```

### 2.RUN – Execute Shell Commands During Image Build
 - The `RUN` instruction lets you execute shell commands during the build process of the Docker image.
 - This is often used to:
   - Install packages
   - Configure software
   - Download dependencies
   - Modify files/directories

  - Example
    ```
     # Install curl using shell form
     RUN apt update && apt install -y curl

     # Clean up cache to reduce image size
     RUN apt clean && rm -rf /var/lib/apt/lists/*

     # Exec form
     RUN ["mkdir", "-p", "/myapp"]

    ```
 ### 3.CMD – Default Command to Run When Container Starts
  - The `CMD` instruction specifies the default command to run when a `container` starts.
  -  the `Container` is the running instance or a `Docker image`
  -  The purpose of `CMD` in a Dockerfile is to define the default command that should be executed when the container starts.
  -  The Simplest command can be stating that container has started
    ```
     CMD echo "Hello from the container!"
    ```

 ### 4.Entry Point
  - When you want to ensure a fixed, executable command always runs, and you can pass arguments dynamically.

 ### 5.ARG – Define Build-Time Variables
  - The `ARG`  instruction allows you to define build-time variables that can be passed to the Docker build process.
  - Example
    -
    ```
      ARG VERSION=1.0
      RUN echo "Building version $VERSION"
    ```
