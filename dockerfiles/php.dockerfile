FROM php:8.0-fpm

#the default work directory
WORKDIR /var/www/html

#copy source code
COPY src .

#install extentions for laravel
RUN docker-php-ext-install pdo pdo_mysql

#change owner of files to standard php user
RUN chown -R www-data:www-data /var/www/html