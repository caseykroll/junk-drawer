FROM 'postgres'

ENV POSTGRES_PASSWORD=password
ADD ./sql/init.sql /docker-entrypoint-initdb.d/
EXPOSE 5432