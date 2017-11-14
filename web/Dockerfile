FROM php:5.6-apache

RUN apt-get -y update
RUN	apt-get install -y zlib1g-dev libicu-dev g++ git zip unzip ImageMagick subversion openssl
RUN	docker-php-ext-install pdo pdo_mysql intl zip opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get install -y \
        libfreetype6-dev \
        libmcrypt-dev \
        libpng12-dev \
        libjpeg-dev \
        libpng-dev
RUN docker-php-ext-configure gd \
        --enable-gd-native-ttf \
        --with-freetype-dir=/usr/include/freetype2 \
        --with-png-dir=/usr/include \
        --with-jpeg-dir=/usr/include \
    && docker-php-ext-install gd

RUN apt-get install -y libxml++2.6-dev	
RUN	docker-php-ext-install soap