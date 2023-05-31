DOCKER_COMPOSE = docker-compose

DOCKER_COMPOSE_FILE = ./srsc/docker-compose.yml 

build:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build 

start:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d 

stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

clean:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v
	sudo rm -rf /home/ahakam/data/mariadb/*
	sudo rm -rf /home/ahakam/data/wordpress/*
	docker system prune --force --all

