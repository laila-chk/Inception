FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

#COPY conf/my.cnf /etc/mysql/my.cnf

COPY  ./tools/mdb_start.sh .

RUN mkdir /run/mysqld/ &&\
	chmod +x mdb_start.sh

# RUN  ./mdb_start.sh 


#ENTRYPOINT ["sh", "mdb_start.sh"]

#CMD ["mysql"]

CMD ["./mdb_start.sh"]