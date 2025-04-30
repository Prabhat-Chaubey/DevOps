# Networking Docker Compose
- Docker Compose is a tool used for defining and running multi-container Docker applications. It allows you to define a multi-container environment in a single YAML file, and then manage the lifecycle of those containers (build, start, stop, and manage them) with a single command.

## Key Features of Docker Compose:
   - 1._Multi-container Setup:
     - Docker Compose allows you to define multiple containers (services) that make up your application, and configure how they interact with each other.

   - 2._Single Configuration File:
      - The entire application and its services are defined in a single YAML file (docker-compose.yml), which makes it easier to share and version control the environment setup.

  - 3._Networking:
      - Docker Compose handles networking between containers automatically. It creates a dedicated network for the services defined in the `docker-compose.yml` file, allowing containers to communicate with each other via service names.

  - 4._Volume Management::
      - You can easily define persistent storage for your services (e.g., databases) using volumes, which ensures data is retained even when containers are stopped or recreated.
   
  - 5._Dependency Management:
      - You can specify the order in which services should start and define dependencies between them. Docker Compose handles service dependencies automatically.

## Run Docker Compose:
- Once you’ve defined the docker-compose.yml file, you can use the following commands to manage your containers.
- Build and Start Containers:
   ```
   docker-compose up
   ```   
- Stop Containers:
     ```
   docker-compose down
   ```   
- Run Containers in the Background (Detached Mode):
     ```
   docker-compose up -d
   ```   
- View Logs for All Services:
     ```
   docker-compose logs
   ```   
- Execute Commands in Running Containers:
     ```
   docker-compose exec <service_name> <command>
   ```   


        
