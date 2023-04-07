#!/bin/bash

service mysql start
mysql -u root -e "CREATE DATABASE mdb ; CREATE USER 'lchokri'@'%' IDENTIFIED BY 'psswd' ; GRANT ALL PRIVILEGES ON mdb.* TO 'lchokri'@'%'; FLUSH PRIVILEGES;"

#service mysql stop

#exec bash
exec mysql
