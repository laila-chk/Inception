#!/bin/bash
cd /var/www/html/wordpress
wp core download --allow-root
wp config create --allow-root --dbname=${MYSQL_DATABASE}  --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST}
wp core install --allow-root --url=${DOMAIN} --title=Inception --admin_user=${WPA_USER} --admin_password=${WPA_PW}  --admin_email=${WPA_EMAIL} --skip-email
wp user create --allow-root $WW_USER $WP_EMAIL --user_pass=$WP_PW 

sed -i 's/\/run\/php\/php7\.3-fpm\.sock/wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf

php-fpm7.3 -R -F
