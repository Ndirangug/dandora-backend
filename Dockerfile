FROM composer:1.9 as build
WORKDIR /app
COPY . /app
RUN composer global require hirak/prestissimo && composer install

FROM php:7.4

COPY --from=build /app /app

WORKDIR /app

ENTRYPOINT [ "php", "artisan", "serve", "--port=8080" ]