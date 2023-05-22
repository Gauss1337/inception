FROM debian:buster

RUN apt update

# PHP installation
RUN apt install -y php php-fpm

RUN mkdir -p /run/php/

COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000

# Install additional PHP packages
RUN apt-get install php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip wget git gettext-base -y


WORKDIR "/var/www/html"

RUN wget https://wordpress.org/latest.tar.gz

RUN tar -xzf latest.tar.gz

WORKDIR "/var/www/html/wordpress"
COPY wp-conf.php /var/www/html/wordpress

COPY ./express_script.sh /express_script.sh

RUN chmod +x /express_script.sh

ENTRYPOINT ["/bin/bash", "/express_script.sh"]
#CMD ["php","-S","127.0.0.1"]

