FROM debian:buster

RUN apt-get update && apt-get install -y \
    php php-fpm php-cgi php-common php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath \
    unzip wget git gettext-base curl

RUN mkdir -p /run/php/

COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000

WORKDIR "/var/www/html"

RUN curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xf wordpress.tar.gz -C /var/www/html && \
    rm wordpress.tar.gz

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

WORKDIR "/var/www/html/wordpress"

COPY ./wp-config.php .

COPY ./express_script.sh /express_script.sh

RUN chmod +x /express_script.sh

ENTRYPOINT ["/bin/bash", "/express_script.sh"]


