FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install mariadb-server mariadb-client
COPY ./script.sql /tmp/
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql -uroot < /tmp/script.sql
RUN service mysql restart

CMD ["mysqld"]

