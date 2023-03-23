#!bin/sh

openssl genpkey -algorithm RSA -out ssl_prv.key
openssl req -new -key ssl_prv.key -out ssl_cert.pem -subj "/CN=Inception/O=1337/C=MA/ST=MA/L=bg"
openssl x509 -req -days 365 -in ssl_cert.pem -signkey ssl_prv.key -out ssl_cert.crt
mv ssl_* /etc/nginx/ssl/
