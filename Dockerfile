FROM composer:latest as build
WORKDIR /app
COPY . /app
RUN composer global require hirak/prestissimo && composer install

FROM php:8-alpine

COPY --from=build /app /app

WORKDIR /app

ENTRYPOINT [ "php", "artisan", "serve", "--port=8080" ]