## Instructions for Running the Application in Production with Docker

1. Copy the environment configuration from the `.env.example` file to `.env.production`:
   ```bash
   cp .env.example .env.production
   ```
2. Update the `.env.production` file with the necessary environment variables, such as:
   * `DB_HOST`
   * `DB_DATABASE`
   * `DB_USERNAME`
   * `DB_PASSWORD`  

    or everything that `docker-compose.yml` needs.

3. Run the application using Docker with the following command:
   ```bash
   docker compose --env-file .env.production up -d --build
   ```
   This command will use the `.env.production` file to set the necessary environment variables and build the Docker container in detached mode.

