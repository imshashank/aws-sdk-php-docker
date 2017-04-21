# Docker files for AWS SDK for PHP

[![Build Status](https://img.shields.io/travis/aws/aws-sdk-php.svg?style=flat)](https://travis-ci.org/imshashank/aws-sdk-php-docker)

#Building docker images

```
docker build -t aws-sdk-php .
```

### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Docker Tags

`dockerfile/java` provides multiple tagged images:

* `latest` (default): PHP 7.1 (alias to `php-7.1.4`)
* `debug`: PHP 7.1 with xdebug
* `php-7.0`: PHP 7.0
* `php-5.6`: PHP 5.6


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/imshashank/aws-sdk-php) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull imshashank/aws-sdk-php`

   (alternatively, you can build an image from Dockerfile: `docker build -t="imshashank/aws-sdk-php" github.com/imshashank/aws-sdk-php-docker`)


### Usage

    docker run -it --rm imshashank/aws-sdk-php-docker
