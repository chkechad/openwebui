# 📖 Open WebUI

This documentation describes the Docker Compose deployment of Open WebUI, with a PostgreSQL 16 database and full
integration with Ollama for local inference.

## 🚀 Installation

1. Place the file
   Make sure you have a docker-compose.yml file with the configuration below.

2. Create the .env file
   In the project root, create a .env file with your variables:

```shell
# .env
DB_USER=openui
DB_PASSWORD=your_secure_password
DB_NAME=openui_db

# JWT secret for signing auth tokens
JWT_SECRET=one_very_long_random_string_change_me
```

3. Start the containers
```shell
# In detached mode
docker compose up -d

# Check container status
docker compose ps
```

4. Verify service health
```shell
docker compose exec app wget --spider -q http://localhost:8080/healthz
docker compose exec db pg_isready -U openui -d openui_db
```
