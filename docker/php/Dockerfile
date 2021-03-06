FROM php:7.4-fpm-alpine

COPY zzz-www.conf /usr/local/etc/php-fpm.d/zzz-www.conf

# wordpress/php7.4/fpm-alpine/Dockerfile
# persistent dependencies
RUN apk add --no-cache \
    bash \
    sed \
    ghostscript \
    imagemagick

RUN set -ex; \
    \
    apk add --no-cache --virtual .build-deps \
    $PHPIZE_DEPS \
    freetype-dev \
    imagemagick-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libzip-dev \
    ; \
    \
    docker-php-ext-configure gd --with-freetype --with-jpeg; \
    docker-php-ext-install -j "$(nproc)" \
    bcmath \
    exif \
    gd \
    mysqli \
    zip \
    ; \
    pecl install imagick-3.4.4; \
    docker-php-ext-enable imagick; \
    \
    runDeps="$( \
    scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions \
    | tr ',' '\n' \
    | sort -u \
    | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' \
    )"; \
    apk add --virtual .wordpress-phpexts-rundeps $runDeps; \
    apk del .build-deps

# set recommended PHP.ini settings
# see https://secure.php.net/manual/en/opcache.installation.php
COPY opcache-recommended.ini /usr/local/etc/php/conf.d/
RUN docker-php-ext-enable opcache

# https://wordpress.org/support/article/editing-wp-config-php/#configure-error-logging
COPY error-logging.ini /usr/local/etc/php/conf.d/

COPY php.ini /usr/local/etc/php/conf.d/