#!/bin/bash

dockerize \
    -template .docker/app/.env:.env \
    -wait tcp://db:3306 -timeout 40s

composer install
php artisan migrate
php-fpm
