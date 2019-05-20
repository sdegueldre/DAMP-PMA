FROM php:7.2.1-apache
MAINTAINER Samuel Degueldre
RUN docker-php-ext-install pdo pdo_mysql mysqli
