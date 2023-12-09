# Postgres

It's pretty straightforward to run Postgres from Docker.
You can start by simply using the following Dockerfile example to build an image:

_example `Dockerfile`_

```
FROM 'postgres'
ENV POSTGRES_PASSWORD=password
```

this will:

- create a super-user ("postgres") and a default empty database (also named "postgres")
- start the postgres container

You can immediately connect and start poking around in the postgres database using `psql` (an interactive Postgres terminal), but, you may wish to pre-load data _before_ you build (see the section on pre-loading below).
Note that if you just build from within this project+folder using `docker build -t <your-postgres-image-name>` you'll be preloading some data; see what it is in `./sql/init.sql`

## Connecting to `psql`

You should be able to connect to the _integrated terminal_ of the running container using the command `docker exec -it <container_id> sh`
`exec`
: execute a command on a running container
`-it`
: attach STDIN which keeps the terminal from exiting immediately
`sh`
: run shell process

If that goes well, you should now be in the terminal of your container. To access the psql on this container, you can do the following:

`psql -U postgres` which will connect you to `psql` (an interactive Postgres terminal) with the default "postgres" user, assuming you didn't change any settings on build.

**(!)** Note that because we used the least amount of configuration we could, our container created a database named **postgres**, and that's a safe place to put your test work.

## Using `psql`

`\l`
:list databases

`\c <db_name>`
:connect to a database

`\dt`
:list the tables in the currently connected database

`\d`
:describe all tables in the currently connected database

`exit`
: exit the postgres shell

## Pre-loading data

You can create some tables and data by adding sql scripts to the `/docker-entrypoint-initdb.d/` in the image via the `ADD` command in the `Dockerfile` (see example below).
Any `*.sql` files found here will run _when the container starts, provided that there is no data already in place_.
This means that as long as _something_ was added to a database, those scripts should not run a second time, even if the container is stopped and restarted.
What's worse there is that if your script gets partway done and then fails, you can't just re-run it without clearing all of the data out or creating a new container with an updated image.
So, that's just to say, pay attention to the output when you run your container for the first time.

_example `Dockerfile`_

```
FROM 'postgres'
ENV POSTGRES_PASSWORD=example
ADD ./init.sql /docker-entrypoint-initdb.d/
```
