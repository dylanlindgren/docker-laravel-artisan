FROM dylanlindgren/docker-phpcli:latest

MAINTAINER "Dylan Lindgren" <dylan.lindgren@gmail.com>

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y php5-mcrypt

RUN mkdir -p /data/www
VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]