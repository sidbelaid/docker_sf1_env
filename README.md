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
$ cd {YourSf1ProjectsDirectory}
$ git clone https://github.com/sidbelaid/docker_sf1_env.git docker_sf1_env
```
### 2- configure host in config/vhost
* replace {site} in the config/vhost/001_site.conf by your app folder, you can create as many hosts you want, just change the port
* if you wana use dns add your ServerName in the windows hosts file
* ex :
* site.dev	192.168.99.100

### 3- run
```
$ cd docker_sf1_env
$ docker-compose up
```
### 4- access to app under http://192.162.99.100:32000/ (use docker-machine ip to get the docker adress ip)