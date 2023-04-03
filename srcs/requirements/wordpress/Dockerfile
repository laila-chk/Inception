FROM debian:buster

#php installation:
RUN apt-get update; apt-get install -y php7.3 \
	php7.3-fpm php7.3-mysql mariadb-client nginx curl

#getting wp-cli to have more control over wp through commands
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
     chmod +x wp-cli.phar ; \
     mv wp-cli.phar /usr/local/bin/wp; \
	 mkdir -p /var/www/html/wordpress;

#Downloading and installing aand configuring Wp using wp-cli

COPY tools/* .

RUN chmod +x wp-cli_install.sh

RUN mkdir /run/php/

ENTRYPOINT ["sh", "wp-cli_install.sh"]

CMD ["php-fpm7.3", "-R", "-F"]

