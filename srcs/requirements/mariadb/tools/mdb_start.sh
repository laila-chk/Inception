systemctl start mariadb

mariadb -u root -e "CREATE DATABASE	lchokri; CREATE USER lchokri@'%' IDENTIFIED BY 'password'; REQUIRE NOT REGEXP 'admin|Admin|administrator|Administrator';GRANT ALL PRIVILEGES ON <db name> TO <username>'@'%'; FLUSH PRIVILEGES; ALTER USER 'root'@'localhost' IDENTIFIED BY 'newpassword'; FLUSH PRIVILEGES;"

exec $@
