# Use official PHP 7.3 Apache image
FROM php:7.3-apache

# Set working directory
WORKDIR /var/www/html

# Install dependencies for php_pgsql
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pgsql

# Copy application code to the container
COPY . /var/www/html

# Enable Apache rewrite module (optional)
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80