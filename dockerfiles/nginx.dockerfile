FROM nginx:stable

#copy the nginx coniguration file
COPY nginx/default.conf /etc/nginx/conf.d

#the default directoy where the source code is
WORKDIR /var/www/html

#copy the source code
COPY src .