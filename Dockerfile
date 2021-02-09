FROM php:7.0-cli

COPY --from=composer /usr/bin/composer /usr/bin/composer

# Install unzip utility and libs needed by zip PHP extension
RUN apt-get update -y
RUN apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip \
    git
RUN pecl install zip \
    docker-php-ext-install zip
