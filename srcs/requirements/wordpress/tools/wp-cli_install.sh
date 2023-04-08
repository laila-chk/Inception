#!/bin/bash
cd /var/www/html/wordpress
wp core download --allow-root
rm -rf wp-config.php
wp config create --allow-root --dbname=${MYSQL_DATABASE}  --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST}
wp core install --allow-root --title=Inception --admin_user=${WW_USER} wpcli --admin_password=${WP_PW}  --admin_email=${WP_EMAIL}

mkdir -p /run/php
sed -i 's/\/run\/php\/php7\.3-fpm\.sock/wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf


exec $@
