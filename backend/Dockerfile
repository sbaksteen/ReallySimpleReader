FROM php:8.4-fpm

WORKDIR /var/www

RUN docker-php-ext-install -j$(nproc) \
    pdo_mysql

COPY . .
RUN chmod +x ./docker-entrypoint.sh

EXPOSE 9000

ENTRYPOINT [ "/var/www/docker-entrypoint.sh" ]

CMD ["php-fpm"]