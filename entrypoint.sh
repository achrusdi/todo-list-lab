#!/bin/bash
set -e

# Copy .env if it exists in a mounted volume
if [ ! -f .env ] && [ -f .env.production ]; then
    cp .env.production .env
fi

if [ -z "$APP_KEY" ]; then
  php artisan key:generate
fi

# Run Laravel optimizations
php artisan config:cache
php artisan route:cache
php artisan view:cache
php artisan storage:link || true
php artisan migrate --force || true


exec "$@"
