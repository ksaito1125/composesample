ifdef http_proxy
BLD_OPTS=--build-arg http_proxy=$$http_proxy --build-arg https_proxy=$$https_proxy --build-arg no_proxy=$$no_proxy
RUN_OPTS=-e http_proxy=$$http_proxy -e https_proxy=$$https_proxy -e no_proxy=$$no_proxy
endif

COMPOSE=-f $(PWD)/docker-compose.yml -f $(PWD)/.devcontainer/docker-compose.yml

build:
	docker compose $(COMPOSE) build $(BLD_OPTS)

up:
	docker compose $(COMPOSE) up -d

stop:
	docker compose $(COMPOSE) stop

rm: stop
	docker compose $(COMPOSE) rm
