FROM php:7.4-apache
RUN docker-php-ext-install pdo pdo_mysql mysqli
COPY src/ /var/www/html
COPY /flag.txt /