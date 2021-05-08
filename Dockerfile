FROM composer:1.9.0 as build
WORKDIR /app
COPY . /app
RUN composer global require hirak/prestissimo && composer install

ENTRYPOINT [ "php", "artisan", "serve", "--port=8080" ]