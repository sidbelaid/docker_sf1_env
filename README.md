# SYMFONY 1.4 ENV with docker-compose

## Environment
- centos7.3
- PHP 5.4.45
- Mysql 5.5.54
- Apache 2.4.6

## Pre-requisite
- Install docker
- Mount your Symfony1.4 projects folder with docker (for windows users), exemple /home/projets/Symfony

### 1- run
```
$ git clone https://github.com/sidbelaid/docker_sf1_env.git docker_sf1_env
```
### 2- configure the vhost in config/vhost

### 3- run
```
$ cd docker_sf1_env
$ docker-compose up
```
### 4- access to app under http://192.162.99.100:PORT/ (use docker-machine ip to get the docker adress ip)