#!/bin/bash

chmod 777 storage -R
php artisan config:cache
php artisan migrate
