###PHP & Mysql development environment using docker containers with laravel support

##Main containers
###Server: NGINX server with custom configurations for php
Url: http://loaclhost:8000

###php: php interpreter version 8.0

###mysql: database server

###phpmyadmin: Web based GUI database manager
Url: http://loaclhost:8080

##Utility containers

###composer: php package manager

###artisan: laravel cli tool

###npm: node package manager for frontend development

##Usage 
Just type `docker-compose up` and all will be ready

###Utility containers usage

To use it type `docker-compose run (service-name) (your-command)`

Example: `docker-compose run npm install --save react`

to avoid unused closed containers after executing you can add `--rm` tag to the command

like `docker-compose run npm install --save react`

Note: in Linux you may have permission issues in the file the created using utility containers because they will owned by root user and not the logged in user.

That because docker runs as root always.

Changing the ownership of the files will solve this problem.