FROM alpine:3.16.4


#install nginx:
RUN apk update; \
      apk add openrc nginx; \
      openrc ; \
      touch /run/openrc/softlevel; \
      echo 'rc_provide="loopback net"' >> /etc/rc.conf ; 
#	sh; 
#	rc-service nginx start;
#starting the service needs more than just this cmd..
EXPOSE 8080

COPY . .

#RUN rm -rf /etc/nginx/nginx.conf; \
#     cp /conf/nginx.conf /etc/nginx/ ;
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY ./tools/*.html  /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
