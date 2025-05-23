#!/bin/sh

# Jalankan migration dan storage:link saat container start
php artisan optimize:clear
php artisan config:cache
php artisan route:cache
php artisan view:cache
php artisan storage:link
php artisan migrate --force

# Jalankan php-fpm
exec php-fpm
