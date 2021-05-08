# FROM composer:1.9 as build
# WORKDIR /app
# COPY . /app
# RUN composer global require hirak/prestissimo && composer install

# FROM php:7.4
# RUN docker-php-ext-install pdo pdo_mysql

# COPY --from=build /app /app

# WORKDIR /app

# ENTRYPOINT [ "php", "artisan", "serve", "--port=8080" ]
# FROM composer:1.9.0 as build
# WORKDIR /app
# COPY . /app
# RUN composer global require hirak/prestissimo && composer install

# FROM php:7.4-apache
# RUN docker-php-ext-install pdo pdo_mysql

# EXPOSE 8080
# COPY --from=build /app /var/www/
# COPY docker/000-default.conf /etc/apache2/sites-available/000-default.conf

# # Use the PORT environment variable in Apache configuration files.
# # https://cloud.google.com/run/docs/reference/container-contract#port
# RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

# # Configure PHP for development.
# # Switch to the production php.ini for production operations.
# # RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
# # https://github.com/docker-library/docs/blob/master/php/README.md#configuration
# RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

# RUN chmod 777 -R /var/www/storage/ && \
#     chown -R www-data:www-data /var/www/ && \
#     a2enmod rewrite

# WORKDIR /var/www
# ENTRYPOINT [ "php", "artisan", "serve", "--port=8080" ]


FROM php:7.4-fpm-alpine

RUN apk add --no-cache nginx wget
RUN docker-php-ext-install pdo pdo_mysql

RUN mkdir -p /run/nginx

COPY docker/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /app
COPY . /app

RUN sh -c "wget http://getcomposer.org/composer.phar && chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer"
RUN cd /app && \
    /usr/local/bin/composer install --no-dev

RUN chown -R www-data: /app

CMD sh /app/docker/startup.sh