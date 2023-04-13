FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server


COPY  ./tools/mdb_start.sh .

RUN mkdir /run/mysqld/ &&\
	chmod +x mdb_start.sh

CMD ["./mdb_start.sh"]