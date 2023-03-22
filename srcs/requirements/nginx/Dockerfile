FROM alpine:3.16.4


#install nginx:
RUN apk update; \
      apk add openrc nginx openssl; \
      openrc ; \
      touch /run/openrc/softlevel; \
      echo 'rc_provide="loopback net"' >> /etc/rc.conf ; \
      mkdir -p /etc/nginx/ssl ;

EXPOSE 8080

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY . .

RUN sh tools/key_gen.sh 

COPY tools/csr.pem tools/private.key /etc/nginx/ssl/

COPY ./tools/*.html  /usr/share/nginx/html/


CMD ["nginx", "-g", "daemon off;"]
