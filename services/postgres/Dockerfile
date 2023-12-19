FROM 'postgres'
ARG PG_PASSWORD=password
ARG PG_USER=postgres

ENV POSTGRES_PASSWORD=$PG_PASSWORD
ENV POSTGRES_USER=$PG_USER

ADD ./sql/init.sql /docker-entrypoint-initdb.d/
EXPOSE 5432