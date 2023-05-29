DOCKER = docker

DOCKER_COMPOSE = docker-compose

DOCKER_COMPOSE_FILE = ./srsc/docker-compose.yml 

build:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build 

# Start the Docker containers
start:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

# Stop the Docker containers
stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

clean:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v
	rm -rf /Users/ahakam/data/mariadb/*
	rm -rf /Users/ahakam/data/wordpress/*

