FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install mariadb-server mariadb-client
COPY ./tools/script.sql /tmp/
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
RUN service mysql start && mysql -uroot < /tmp/script.sql
RUN service mysql restart

CMD ["mysqld"]

