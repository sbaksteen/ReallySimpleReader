#!/bin/sh
set -e

# Run Laravel migrations
php artisan migrate --force

exec "$@"