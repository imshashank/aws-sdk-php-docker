FROM php:7.1-cli

RUN apt-get update && \
    apt-get -y install git libz-dev libtidy-dev && \
    docker-php-ext-install tidy && \
    docker-php-ext-install zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# PHP Configuration required for PHP SDK
RUN touch /usr/local/etc/php/conf.d/memory.ini \
    && echo "memory_limit = 2048M;" >> /usr/local/etc/php/conf.d/memory.ini

RUN touch /usr/local/etc/php/conf.d/phar.ini \
    && echo "phar.readonly = Off;" >> /usr/local/etc/php/conf.d/phar.ini

RUN touch /usr/local/etc/php/conf.d/timezone.ini \
    && echo "date.timezone ='America/Los_Angeles'" >> /usr/local/etc/php/conf.d/timezone.ini

RUN cd / && \
    git clone https://github.com/aws/aws-sdk-php.git

RUN cd /aws-sdk-php && \
    composer install && \
    make build && \
    make test
