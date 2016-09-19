FROM centos:centos6.6

MAINTAINER Orca

# update & prerequis
RUN yum -y update
RUN yum install -y wget

# repos
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
# RUN rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm

# install apache
RUN yum install -y httpd

# install php
RUN yum --enablerepo=epel,remi,rpmforge install -y php php-fpm php-common php-pdo php-mysql php-gd php-mbstring php-xml php-pecl-zendopcache

# install mysql
RUN yum --enablerepo=epel,remi,rpmforge install -y mysql mysql-server mysql-devel

# other tools
RUN yum install -y multitail
RUN yum install -y telnet

# imagemagick
RUN yum install -y ImageMagick

# demarrer services
CMD service httpd start
CMD service mysqld start

EXPOSE 80
EXPOSE 3306

CMD ["bash"]