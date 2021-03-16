FROM php:8.0-fpm

#the default work directory
WORKDIR /var/www/html

#install extentions for laravel
RUN docker-php-ext-install pdo pdo_mysql

#copy source code
COPY src .

RUN mkdir -p storage

RUN chown -R www-data:www-data /var/www/html/storage
