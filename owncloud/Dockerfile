FROM php:5.6-apache
MAINTAINER Christian Hoffmeister <mail@choffmeister.de>

RUN apt-get update

RUN apt-get install -y libfreetype6 libjpeg62-turbo libmcrypt4 libpng12-0 --no-install-recommends \
 && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev zlib1g-dev --no-install-recommends \
 && docker-php-ext-install gd \
 && docker-php-ext-install mbstring \
 && docker-php-ext-install mcrypt \
 && docker-php-ext-install zip

ADD https://download.owncloud.org/community/owncloud-8.1.1.tar.bz2 /tmp/
RUN apt-get install -y bzip2 \
 && tar xfj /tmp/owncloud-8.1.1.tar.bz2 -C /var/www/html --strip 1 \
 && rm /tmp/owncloud-8.1.1.tar.bz2

VOLUME /var/www/html/data
EXPOSE 80

