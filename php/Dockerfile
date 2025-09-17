# Use PHP 8.1 Apache image as base
FROM php:8.1-apache

# Install dependencies and php_pgsql extension
RUN apt-get update && apt-get install -y --no-install-recommends \
    libpq-dev \
    && docker-php-ext-install pgsql \
    && docker-php-ext-enable pgsql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy application code to the container
COPY ./app /var/www/html

# Set working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80