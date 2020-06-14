# Docker PHP Deployment Template

This repository contains example of deployment implementation docker and docker-compose for PHP project. This example is using docker images from [dimaskiddo](https://hub.docker.com/r/dimaskiddo) docker hub repository.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.
See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Prequisites package:
* Docker (Application Containerization)
* Docker-Compose (Docker Orchestration Tools)

### Deployment for Development

Standard deployment:
* Clone this repository to your current directory, make sure it's empty
```
git clone -b master https://github.com/dimaskiddo/docker-php-template.git .
```
* Prepare ```data/web/html``` directory
```
mkdir -p data/web/html
```
* Change environment variables in ```env/dev``` directory
* Goto ```deploy``` directory
```
cd deploy
```
* Build services image
```
docker-compose build
```
* Start PHP environment services
```
docker-compose up -d php
```

Additional deployment:
* Start additional services like NodeJS and MinIO
```
docker-compose up -d node minio
```
* Check running services information
```
docker-compose ps
```

Stopping services:
* Stop all services
```
docker-compose stop
```
* Stop specific service
```
docker-compose stop <service_name>
```

Destroying services:
* Destroying services only
```
docker-compose down
```
* Destroying services and remove all images
```
docker-compose down --rmi all
```

### Deployment for Production

Before doing the same step like in development, for production environment please change any environment variable in ```env/custom``` directory first and also uncomment the override settings in ```deploy/docker-compose.override.yml``` file

### Accessing Services

* PHP service will be available in
  - http request: http://localhost or http://127.0.0.1
  - https request: https://localhost or https://127.0.0.1
* Adminer service will be available in
  - http request: http://localhost:8080 or http://127.0.0.1:8080
* MinIO service will be available in
  - http request: http://localhost:9000 or http://127.0.0.1:9000

### Accessing Database Service

You can access / connect to your MariaDB or browse it using Adminer service with information below
* Hostname: ```mariadb```
* Port: ```3306```
* Username: ```as declared in environment file```
* Password: ```as declared in environment file```

### Accessing Cache Service

You can access / connect to your Redis cache with information below
* Hostname: ```redis```
* Port: ```6379```
* Password: ```as declared in environment file```

### Accessing Storage Service

You can access / connect to your MinIO cache with information below
* Web UI: ```http://localhost:9000 or http://127.0.0.1:9000```
* Hostname: ```minio```
* Port: ```9000```
* Access Key: ```as declared in environment file```
* Secret Key: ```as declared in environment file```

## Built With

* [Docker](https://www.docker.com/) - Application Containerization
* [Docker-Compose](https://docs.docker.com/compose/) - Docker Orchestration Tools

## Authors

* **Dimas Restu Hidayanto** - *Initial Work* - [DimasKiddo](https://github.com/dimaskiddo)

See also the list of [contributors](https://github.com/dimaskiddo/go-whatsapp-rest/contributors) who participated in this project
