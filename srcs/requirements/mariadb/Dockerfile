#FROM alpine:latest

#RUN apk update && \
 #   apk add mariadb mariadb-client && \
  #  rm -rf /var/cache/apk/*

FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY my.cnf /etc/mysql/my.cnf

COPY  ./tools/mdb_start.sh .

RUN mkdir /run/mysqld/ ;\
	chmod +x mdb_start.sh

RUN  ./mdb_start.sh 

CMD ["mysqld"]

