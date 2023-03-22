FROM alpine:3.16.4


RUN apk update; \
      apk add nginx openssl; \
      mkdir -p /etc/nginx/ssl ;

EXPOSE 8080

COPY ./conf/default.conf /etc/nginx/http.d/default.conf

COPY . .

RUN sh tools/key_gen.sh 

COPY tools/csr.pem tools/private.key /etc/nginx/ssl/

COPY ./tools/*.html  /usr/share/nginx/html/


CMD ["nginx", "-g", "daemon off;"]
