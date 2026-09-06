# ============================================
#  Open WebUI — Makefile
# ============================================
# Configuration
COMPOSE     := docker compose
## up: start containers in the background
up:
	$(COMPOSE) up -d
## down: stop containers
down:
	$(COMPOSE) down
## restart: restart the app
restart:
	$(COMPOSE) restart app
## restart-db: restart only the db container
restart-db:
	$(COMPOSE) restart db
## logs: show logs (follow)
logs:
	$(COMPOSE) logs -f app
## logs-db: show db logs (follow)
logs-db:
	$(COMPOSE) logs -f db
## rebuild: pull latest images and restart
rebuild:
	$(COMPOSE) pull
	$(COMPOSE) up -d --force-recreate