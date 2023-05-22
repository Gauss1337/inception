FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install mariadb-server mariadb-client

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mysql start && \
    sleep 2 && \
    service mysql restart

CMD ["mysqld"]

