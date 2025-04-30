# Networking Docker Compose
- Docker Compose is a tool used for defining and running multi-container Docker applications. It allows you to define a multi-container environment in a single YAML file, and then manage the lifecycle of those containers (build, start, stop, and manage them) with a single command.

## Key Features of Docker Compose:
   - Multi-container Setup:
     - Docker Compose allows you to define multiple containers (services) that make up your application, and configure how they interact with each other.

   - Single Configuration File:
      - The entire application and its services are defined in a single YAML file (docker-compose.yml), which makes it easier to share and version control the environment setup.

  - Networking:
      - Docker Compose handles networking between containers automatically. It creates a dedicated network for the services defined in the `docker-compose.yml` file, allowing containers to communicate with each other via service names.

  - Volume Management::
      - You can easily define persistent storage for your services (e.g., databases) using volumes, which ensures data is retained even when containers are stopped or recreated.
   
  - Dependency Management:
      - You can specify the order in which services should start and define dependencies between them. Docker Compose handles service dependencies automatically.
      -   
