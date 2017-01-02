SYMFONY 1.4 ENV without mysql
use docker-compose to link a mysql image

centos6.6
PHP 5.4.45
Apache 2.2.15
ImageMagick

docker build -t orca/sf1_env .
docker run -it --name orca_sf1 --rm -v /home/projets/orca/S1/:/home/webapps/ -v /home/projets/docker/mysql/:/var/lib/mysql -p 80:80 -p 26080:26080 orca/sf1_env bash