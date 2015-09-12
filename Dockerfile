FROM php:cli

ENV VERSION 20150912

# dependencies
RUN apt-get update && apt-get install -y libssl-dev libicu-dev git

# mongo driver
RUN yes 'no' | pecl install mongo \
  && docker-php-ext-enable mongo

# intl extension
RUN docker-php-ext-install intl

# zip extension
RUN docker-php-ext-install zip

# set default timezone
RUN echo 'date.timezone="UTC"' > /usr/local/etc/php/conf.d/date-timezone.ini

# composer
RUN curl -sS https://getcomposer.org/installer?nocache=$VERSION | php \
  && mv composer.phar /usr/local/bin/composer

RUN composer --version

CMD ["composer", "--ansi"]
