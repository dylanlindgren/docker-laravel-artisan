FROM php-cli:latest

MAINTAINER "Dylan Lindgren" <dylan.lindgren@gmail.com>

RUN mkdir -p /data/www
WORKDIR /data/www

RUN useradd --uid 2000 artisan
USER artisan

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]
