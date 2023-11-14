#This file will build image based on ubuntu 20.04 and required packages to deploy a Laravel APP
FROM ubuntu:20.04

############################
#####  CONFIG ZONE #########

ENV APP_DB=nwujobs
ENV APP_DB_USER=biswajit
ENV APP_DB_PASS=abc@1234
ENV DB_FILE=nwujobs.sql

ENV APP_MAIL_USERNAME=a47ad209e20463
ENV APP_MAIL_PASSWORD=216b471b055cdd

ENV WEB_SERVER=127.0.0.1

ENV GIT_REPO=https://github.com/bjnandi/nwujobs-nwu-final-year-project.git
ENV GIT_BRANCH=main
ENV GIT_APP_FOLDER=.

############ END ###########

WORKDIR /myapp

COPY ./Entrypoint/* /myapp/
COPY ./NGINX/* /myapp/nginx/

ENV TZ=Asia/Dhaka \
    DEBIAN_FRONTEND=noninteractive

# Here we are going to install required packages for our Laravel Project
RUN apt update -y; \
    apt install lsb-release ca-certificates apt-transport-https software-properties-common curl unzip mysql-server git nginx -y --no-install-recommends; \
    add-apt-repository ppa:ondrej/php -y; \ 
    apt install php7.4 php7.4-bcmath php7.4-xml php7.4-fpm php7.4-mysql php7.4-zip php7.4-intl php7.4-ldap php7.4-gd php7.4-cli php7.4-bz2 php7.4-curl php7.4-mbstring php7.4-pgsql php7.4-opcache php7.4-soap php7.4-cgi -y --no-install-recommends; \
    sed -i 's/;extension=gd/extension=gd/g' /etc/php/7.4/cli/php.ini; \

# Composer Installation Starting Here
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=1.10.16 ; \

# Database Server Installation and Create Access Credentials and Database for Laravel APP
    service mysql start; \
    mysql -uroot -e "CREATE DATABASE $APP_DB;"; \
    mysql -uroot -e "CREATE USER $APP_DB_USER@'localhost' IDENTIFIED BY '$APP_DB_PASS';"; \
    mysql -uroot -e "GRANT ALL ON $APP_DB.* TO $APP_DB_USER@'localhost';"; \

# Confiure Web Server. we are using nginx as our web server
    cp /myapp/nginx/* /etc/nginx/sites-available/$WEB_SERVER.conf; \
    ln -s /etc/nginx/sites-available/$WEB_SERVER.conf /etc/nginx/sites-enabled/$WEB_SERVER.conf; \
    rm -rf /etc/nginx/sites-enabled/default; \
    sed -i "s/IP_ADDRESS_OR_DOMAIN/$WEB_SERVER/g" /etc/nginx/sites-enabled/$WEB_SERVER.conf; \
    sed -i "s,/var/www/html/,/var/www/html/$GIT_APP_FOLDER/public,g" /etc/nginx/sites-enabled/$WEB_SERVER.conf; \

# Pull Application from Github
    cd /var/www/html; \
    git init; \
    git remote add origin $GIT_REPO; \
    git fetch origin; \
    git checkout origin/$GIT_BRANCH -- $GIT_APP_FOLDER; \

# Confiure App .env file and install dependancies using Composer
    cd /var/www/html/$GIT_APP_FOLDER; \
    cp .env.example .env; \
    sed -i "s/.*DB_DATABASE=.*/DB_DATABASE=$APP_DB/" /var/www/html/$GIT_APP_FOLDER/.env; \
    sed -i "s/.*DB_USERNAME=.*/DB_USERNAME=$APP_DB_USER/" /var/www/html/$GIT_APP_FOLDER/.env; \
    sed -i "s/.*DB_PASSWORD=.*/DB_PASSWORD=$APP_DB_PASS/" /var/www/html/$GIT_APP_FOLDER/.env; \
    sed -i "s/.*MAIL_USERNAME=.*/MAIL_USERNAME=$APP_MAIL_USERNAME/" /var/www/html/$GIT_APP_FOLDER/.env; \
    sed -i "s/.*MAIL_PASSWORD=.*/MAIL_PASSWORD=$APP_MAIL_PASSWORD/" /var/www/html/$GIT_APP_FOLDER/.env; \

    composer install; \
    php artisan key:generate; \
    mysql -uroot $APP_DB < /var/www/html/$GIT_APP_FOLDER/$DB_FILE; \

# Set Permission   
    chown -R www-data:www-data /var/www/html/$GIT_APP_FOLDER/storage; \
    chown -R www-data:www-data /var/www/html/$GIT_APP_FOLDER/bootstrap/cache;

# Export Port 80 to access the web app
EXPOSE 80

# Run Scripts to start nginx, mysql, phpfpm automatically on container boot
RUN ["chmod", "+x", "/myapp/startup.sh"]
ENTRYPOINT ["sh", "/myapp/startup.sh"]
