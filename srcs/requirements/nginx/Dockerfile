FROM alpine:3.16.4

RUN apk update; \
      apk add nginx openssl; \
      mkdir -p /etc/nginx/ssl ;

COPY ./conf/default.conf /etc/nginx/http.d/default.conf

COPY . .

RUN sh tools/key_gen.sh 

CMD ["nginx", "-g", "daemon off;"]
