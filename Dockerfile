FROM diegomarangoni/php:cli

ENV VERSION 20150912

# composer
RUN curl -sS https://getcomposer.org/installer?nocache=$VERSION | php \
  && mv composer.phar /usr/local/bin/composer

RUN composer --version

CMD ["composer", "--ansi"]
