FROM php:7.1-apache

RUN apt-get update && \
	apt-get -y install wget unzip vim git zip libz-dev libtidy-dev python2.7 software-properties-common && \
	curl -O https://bootstrap.pypa.io/get-pip.py && \
	python2.7 get-pip.py && \
	pip install awscli && \
	rm get-pip.py && \
	docker-php-ext-install tidy && \
	docker-php-ext-install zip && \
	rm -rf /var/lib/apt/lists/*

RUN wget https://phar.phpunit.de/phpunit-5.0.phar && \
	chmod +x phpunit-5.0.phar && \
	mv phpunit-5.0.phar /usr/local/bin/phpunit && \
	phpunit --version

RUN touch /usr/local/etc/php/conf.d/memory.ini \
    && echo "memory_limit = 2048M;" >> /usr/local/etc/php/conf.d/memory.ini

RUN touch /usr/local/etc/php/conf.d/phar.ini \
    && echo "phar.readonly = Off;" >> /usr/local/etc/php/conf.d/phar.ini

RUN touch /usr/local/etc/php/conf.d/timezone.ini \
    && echo "date.timezone ='America/Los_Angeles'" >> /usr/local/etc/php/conf.d/timezone.ini


ENV AWS_DEFAULT_REGION=us-east-1

# Enable and configure xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN sed -i '1 a xdebug.remote_autostart=true' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '1 a xdebug.remote_mode=req' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '1 a xdebug.remote_handler=dbgp' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '1 a xdebug.remote_connect_back=off ' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '1 a xdebug.remote_port=9000' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '1 a xdebug.remote_enable=1' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '1 a xdebug.idekey=phpstorm' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i '1 a xdebug.default_enable=0' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN sed -i '1 a xdebug.remote_host=127.0.0.1' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
