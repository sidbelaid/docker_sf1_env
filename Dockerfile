FROM centos:centos6.6

MAINTAINER Orca

# repos
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# update & prerequis
RUN yum -y update
	&& yum install -y wget
	&& yum install -y multitail
	&& yum install -y telnet

# install apache
RUN yum install -y httpd

# install php
RUN yum --enablerepo=epel,remi,rpmforge install -y php php-fpm php-common php-pdo php-mysql php-gd php-mbstring php-xml php-pecl-zendopcache

# imagemagick
RUN yum install -y ImageMagick

# demarrer services
CMD service httpd start

EXPOSE 80
EXPOSE 3306

CMD ["bash"]