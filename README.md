# Docker files for AWS SDK for PHP

[![Build Status](https://img.shields.io/travis/aws/aws-sdk-php.svg?style=flat)](https://travis-ci.org/imshashank/aws-sdk-php-docker)

### Building docker images

```
docker build -t imshashank/aws-sdk-php .
```

### Docker Tags

`dockerfile/java` provides multiple tagged images:

* `latest` (default): PHP 7.1-cli (alias to `php-7.1.4`)
* `xdebug`: PHP 7.1-apache with xdebug (Also includes helpful dev tools)
* `php-7.0`: PHP 7.0-cli
* `php-5.6`: PHP 5.6-cli

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/imshashank/aws-sdk-php/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull imshashank/aws-sdk-php`

   (alternatively, you can build an image from Dockerfile: `docker build -t="imshashank/aws-sdk-php" github.com/imshashank/aws-sdk-php-docker`)


### Usage

    docker run -it --rm imshashank/aws-sdk-php:latest
