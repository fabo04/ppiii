#!/bin/bash

docker pull mysql:latest
docker run -d --name mi_mysql -e MYSQL_ROOT_PASSWORD=mipassword mysql:latest
docker exec -it mi_mysql bash
apt-get update
apt-get install -y cowsay lolcat
cowsay "¡Hola desde Docker!" | lolcat
docker rm mi_mysql
