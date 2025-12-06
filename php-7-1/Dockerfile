# Dockerfile
FROM php:7.1-fpm-alpine

# Install system dependencies and PHP extensions
RUN apk add --no-cache \
        postgresql-dev \
        libpng-dev \
        libjpeg-turbo-dev \
        freetype-dev \
        zip \
        libzip-dev \
        git \
        curl \
    && docker-php-ext-configure gd --with-freetype-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install -j$(nproc) \
        gd \
        pdo_pgsql \
        pgsql \
        zip \
        opcache \
    && docker-php-ext-enable pdo_pgsql pgsql

# Install composer (optional but very useful)
COPY --from=composer:1 /usr/bin/composer /usr/bin/composer

# Set recommended PHP.ini settings
RUN { \
        echo 'opcache.enable=1'; \
        echo 'opcache.memory_consumption=128'; \
        echo 'opcache.interned_strings_buffer=8'; \
        echo 'opcache.max_accelerated_files=4000'; \
        echo 'opcache.revalidate_freq=60'; \
        echo 'opcache.save_comments=1'; \
    } > /usr/local/etc/php/conf.d/opcache-recommended.ini

# Workdir
WORKDIR /var/www/html

# Copy application code (you can override this in compose if needed)
COPY . /var/www/html

# Permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 9000
CMD ["php-fpm"]