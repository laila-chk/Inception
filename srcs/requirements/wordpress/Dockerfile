FROM debian:buster

#php installation:
RUN apt-get update; apt-get install -y php7.3 \
	php7.3-fpm php7.3-mysql mariadb-client nginx curl php7.3-curl php7.3-gd php7.3-xml php7.3-mbstring

#getting wp-cli to have more control over wp through commands
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
     chmod +x wp-cli.phar ; \
     mv wp-cli.phar /usr/local/bin/wp; \
	mkdir -p /var/www/html/wordpress;

COPY tools/* .

COPY conf/* /var/www/html/wordpress

#RUN mv index.php /var/www/html

RUN chmod +x wp-cli_install.sh

RUN mkdir /run/php/

CMD ["sh", "wp-cli_install.sh"]
