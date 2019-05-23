FROM php:7.2.1-apache
MAINTAINER Samuel Degueldre
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN apt-get update -y && apt-get install -y libpng-dev libjpeg-dev
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr
RUN docker-php-ext-install gd
