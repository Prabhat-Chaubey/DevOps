# 1.Docker Volumes
- Stored in a special part of the host filesystem (/var/lib/docker/volumes/).
- Ideal for persistent data, like databases or application state.
    -   
  ```
    docker run -v volume_name:/path/in/container my_image
  ```
- When to Use:
  - Use when  you want Docker to manage your data storage.
  - For production use cases (e.g., PostgreSQL, MySQL).
  - When sharing data between containers.
 
# 2.Bind Mounts
  - Maps a specific path on the host machine to a path inside the container.
  - Offers more control but also depends on the host filesystem structure.


# 3. Container Lifecycle and File Manipulation 

  ### 1.Container Lifecycle & Detached Mode (-d)
   - When you run a container, by default it attaches to your terminal and runs in the foreground. If you close the terminal or stop it manually, the container stops.
   - To run a container in the background (detached mode), use the `-d` flag:
     -
     ```
       docker run -d --name mycontainer ubuntu sleep infinity
     ```
     + `-d:` Detached mode, runs the container in the background.
     + `--name mycontainer:` Names the container mycontainer.
     + `ubuntu`: The base image used to run the container.
     + `sleep infinity`: Keeps the container alive indefinitely (so it doesn't exit immediately).

  ### 2. Interacting with a Running Container 
   - Once the container is running in the background, you can interact with it in two major ways using `docker exec:`
      -
      ```
      docker exec -it mycontainer sh
      ```
      + docker exec: Executes a command in a running container.
      + -it: Interactive Terminal — lets you interact via a shell.
      + mycontainer: The name (or ID) of the running container.
      + sh: Starts a shell session inside the container (use bash if available).
      
  - Run a Single Command in the Container
     -
      ```
      echo "Hello world!" > myfile.txt
      ```
      + Creating a file and writing into it
      ```
      cat myfile.txt
      ```
      + this is used to see what is inside the file

# 4. Inspecting Containers and Volumes
 - Get detailed JSON config about containers or volumes.
   ```
   docker inspect <container_or_volume_name>
   ```
# 5.Container Cleanup
 ```
   docker stop container_name
   docker rm container_name
```

# 6. Volume Sharing Between Containers
 -  In Docker, volumes are used to persist data and share data between containers. One powerful feature is the ability for one container to reuse the volumes of another container using the `--volumes-from` flag.
 -  `--volumes-from` allows a container to mount volumes from another container.
   -
      ```
        docker run -it --volumes-from mypostgres alpine:3.17 sh
    ```
         
    + `docker run` ->	Starts a new container
    + `-it`	-> Interactive terminal
    + `--volumes-from mypostgres`	-> Mounts all volumes from the running or stopped container mypostgres
    + `alpine:3.17`	-> Uses the lightweight Alpine Linux image version 3.17
    + `sh`	-> Opens a shell in the new container
