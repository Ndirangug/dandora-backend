FROM composer:1.9.0 as build
WORKDIR /app
COPY . /app
RUN composer global require hirak/prestissimo && composer install

FROM php:7.3-apache-stretch

COPY --from=build /app /app


ENTRYPOINT [ "php", "artisan", "serve", "--port=8080" ]