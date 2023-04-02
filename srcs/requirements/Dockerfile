FROM alpine:3.16.4

RUN apk update && apk add mariadb mariadb-client  mariadb-server-utils

COPY ./tools .

#RUN sh startmdb.sh
RUN  useradd -r -s /bin/false mysql; \
	chown -R mysql:mysql /var/lib/mysql; \
	echo "user = mysql" >> /etc/mysql/my.cnf

#COPY my.cnf /etc/mysql/my.cnf

#EXPOSE 3306

CMD ["mysqld"]
