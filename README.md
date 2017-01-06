# SYMFONY 1.4 ENV with docker-compose

### Environment
- centos7.3
- PHP 5.4.45
- Mysql 5.5.54
- Apache 2.4.6

##### 1- 
```
$ git clone git@github.com:sidbelaid/docker_sf1_env.git docker_sf1_env
```
##### 2- configure host in config/vhost
replace site by your app folder
##### 3- 
```
$ cd docker_sf1_env
$ docker-compose up
```
##### 3- access to app under http://192.162.99.100:32000/ (use docker-machine ip to get the docker adress ip)