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
   
