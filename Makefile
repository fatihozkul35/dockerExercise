ENV_PATH = venv\Scripts\activate
DOCKER_CMD = docker-compose


.PHONY: build up down logs migrate superuser

build:
	$(DOCKER_CMD) build

up:
	$(DOCKER_CMD) up -d

down:
	$(DOCKER_CMD) down

logs:
	$(DOCKER_CMD) logs -f

migrate:
	$(DOCKER_CMD) exec web python manage.py migrate

superuser:
	$(DOCKER_CMD) exec web python manage.py createsuperuser
