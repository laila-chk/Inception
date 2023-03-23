FROM alpine:3.16.4


#php installation:
RUN apk update ; \
      apk add php php-fpm php-phar php-curl curl; 
# to start the service uncoment below:
      #rc-service php-fpm7 start


#getting wp-cli to have more control over wp through commands
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
       php --version; \
     chmod +x wp-cli.phar ; \
     mv wp-cli.phar /usr/local/bin/wp; \
     mkdir -p /var/www/html/wordpress ;
     

#Downloading and installing aand configuring Wp using wp-cli
Run wp core download --path=/var/www/html/wordpress;




RUN mkdir -p /usr/share/wp/; 
#    wget -P /usr/share/wp/ http://wordpress.org/latest.tar.gz; \
#    tar -xzvf /usr/share/wp/latest.tar.gz -C /usr/share/wp; \
#    rm /usr/share/wp/latest.tar.gz; \
#    chmod 777 /usr/share/wp; 
#we probably should edit config file here with database
#COPY . .
