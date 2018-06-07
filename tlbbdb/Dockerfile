FROM mysql:latest

COPY ./initdb.d/*.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]

