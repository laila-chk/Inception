#!/bin/bash
echo "wpcli script will be runinmg ________________________"
sleep 5

cd /var/www/html/wordpress
wp core download --allow-root
rm -rf wp-config.php
wp config create --allow-root --dbname=${MYSQL_DATABASE}  --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST}
wp core install --allow-root --title=Inception --admin_user=${WW_USER} wpcli --admin_password=${WP_PW}  --admin_email=${WP_EMAIL}

exec $@
