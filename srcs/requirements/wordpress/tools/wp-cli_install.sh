
cd /var/www/html/wordpress
wp core download --allow-root 
wp config create --allow-root --dbname=${MYSQL_DATABASE}  --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=$(DB_HOST)
wp core install --allow-root --title=Inception --admin_user=${WW_USER} wpcli --admin_password=${WP_PW}  --admin_email=${WP_EMAIL}

exec $@
