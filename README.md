SYMFONY 1.4 ENV with mysql

# docker compose
centos7
PHP 5.4.16
Mysql 5.5.54
Apache 2.4.6

1- configure host in config/vhost
2- docker-compose up
3- access to app under http://192.162.99.100:32000/

# docker build image
docker build -t orca/sf1_env .
docker run -it --name orca_sf1 --rm -v /home/projets/orca/S1/:/home/webapps/ -v /home/projets/docker/mysql/:/var/lib/mysql -p 80:80 -p 26080:26080 orca/sf1_env bash