FROM php8.1:apache

RUN apt-get update && apt-get upgrade \
    apt install nano -y

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
