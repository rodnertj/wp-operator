FROM docker.devops.somosdigital.io/edumobi/docker-wordpress:php74
LABEL maintainer="it@edumobi.com.br"

WORKDIR /var/www/html
ADD wordpress /var/www/html

ADD docker/.htaccess /var/www/html/
ADD docker/wp-config.php /var/www/html/
ADD docker/uploads.ini /usr/local/etc/php/conf.d/

USER www-data