FROM centos:centos6.6

MAINTAINER Orca

# repos
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# update & prerequis
RUN yum -y update --nogpgcheck; yum clean all

# Apache PHP ImageMagick
RUN yum install -y httpd
RUN yum --enablerepo=epel,remi,rpmforge install -y php php-fpm php-common php-pdo php-mysql php-gd php-mbstring php-xml php-pecl-zendopcache
RUN yum install -y ImageMagick

RUN yum install -y wget
RUN yum install -y multitail

# demarrer services
CMD service httpd start

EXPOSE 80

CMD ["/bin/bash"]