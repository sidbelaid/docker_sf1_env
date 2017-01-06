FROM meupatrocinio/apache2.4-php5.4-ssl-nr-rg

MAINTAINER Orca

# repos
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# Zend OPCACHE & ImageMagick
RUN yum update -y && yum install -y --enablerepo=epel,remi,rpmforge \
	php-pear \
	php-devel \
	openssl-devel \
	php \
	php-common \
	php-dba \
	php-fpm \
	php-gd \
	php-intl \
	php-mbstring \
	php-pdo \
	php-pecl-memcache \
	php-pgsql \
	php-soap \
	php-xml \
	php-xmlrpc \
	php-pecl-zendopcache \
	ImageMagick \
	wget \
	multitail \
	git \
	svn \
	&& yum clean all