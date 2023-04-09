#!/bin/bash

mkdir -p /run/mysqld/

chown mysql:mysql /run/mysqld

service mysql start
mysql <<< "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ; CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ; GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%'; FLUSH PRIVILEGES;"

service mysql stop

#exec bash
mysqld --bind-address=0.0.0.0
