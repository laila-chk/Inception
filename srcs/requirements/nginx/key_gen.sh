
#!bin/sh

openssl genpkey -algorithm RSA -out private.key
openssl req -new -key private.key -out csr.pem -subj "/CN=Inception/O=1337/C=MA/ST=MA/L=bg"

