FROM alpine:latest
LABEL Maintainer="Aurélien JANVIER <dev@ajanvier.fr>" \
      Description="Unofficial Docker image for Garradin."

ENV GARRADIN_VERSION 0.9.4

# Install packages
RUN apk --no-cache add gettext nginx curl supervisor \
    php7 php7-fpm php7-sqlite3 php7-pdo_sqlite php7-json php7-openssl php7-session

# Downloading and installing Garradin
RUN curl -L -O https://fossil.kd2.org/garradin/uv/garradin-$GARRADIN_VERSION.tar.bz2
RUN tar xjvf garradin-$GARRADIN_VERSION.tar.bz2
RUN mv garradin-$GARRADIN_VERSION /src
RUN chown -R nobody: /src

# Configure nginx
COPY config/nginx.conf /etc/nginx/nginx.conf

# Configure PHP-FPM
COPY config/fpm-pool.conf /etc/php7/php-fpm.d/zzz_custom.conf
COPY config/php.ini /etc/php7/conf.d/zzz_custom.ini

# Configure supervisord
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Copy start.sh script
COPY start.sh /start.sh
RUN chmod u+x /start.sh

# Removing useless stuff
RUN apk del curl
RUN rm garradin-$GARRADIN_VERSION.tar.bz2

EXPOSE 80
ENTRYPOINT ["/start.sh"]
