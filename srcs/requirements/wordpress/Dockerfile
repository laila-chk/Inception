# the base image we'll use:
FROM alpine:3.16.4

#commands to install necessary dependencies ..

#php installation:
RUN apk update ; \
      apk add php-fpm; 
# to start the service uncoment below:
      #rc-service php-fpm7 start
RUN mkdir -p /usr/share/wp/; \
     wget -P /usr/share/wp/ http://wordpress.org/latest.tar.gz; \
     tar -xzvf /usr/share/wp/latest.tar.gz -C /usr/share/wp; \
     rm /usr/share/wp/latest.tar.gz; \
     chmod 777 /usr/share/wp; 
#we probably should edit config file here with database
COPY . .
