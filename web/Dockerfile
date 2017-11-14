FROM php:5.4-apache

RUN apt-get -y update
RUN	apt-get install -y zlib1g-dev libicu-dev g++ git zip unzip ImageMagick subversion
RUN	docker-php-ext-install pdo pdo_mysql intl zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer