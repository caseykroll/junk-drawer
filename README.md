# junk-drawer

A place to put sample code, test data and thoughts while refining ideas for other projects.
Hopefully also a decent reference for anyone interested in any of these topics (including some )

## Project Format

For now, this project will be organized into different `service` folders addressing different concepts.
Where it makes sense, the separate services will be based on Docker images with the option of composing them together.

## Setup / Prerequisites

Install and run `Docker`.

## Docker quick reference / refresher

### 1. Create a Dockerfile

For an individual service, start by creating a file called `Dockerfile` (no extension).

This file will _ONLY_ be used during the docker build process to create an `image`, which is like a blueprint for creating instances called `containers` which is where your environment will actually run.
Note that you don't necessarily _need_ a Dockerfile to build an image, but it's nice to be able to reference your configuration later should you need it.

The Dockerfile needs (at a minimum) to state which "base image" we deriving our own image `FROM`.

There are many base image options available, from web servers to databases and more; making Docker an ideal way to test and share implementations.
The following Dockerfile example allows us to create an environment with postgres already available and ready to use:

_example `Dockerfile`:_

```
FROM 'postgres'
ENV POSTGRES_PASSWORD=example
```

**(!)** _Note the `ENV` instruction here; this is required for postgres to build properly. Typically you would pull this value from somewhere rather that hard-coding, but here we're showing the minimum requirements to build_

With your Dockerfile created you can now use it to `build` an image.

### 2. Build an image from the Dockerfile

Run a build using the following command, using whatever you like as the image name tag: `docker build -t <your-image-name> .`

_example `docker build -t postgres_test .`_

`build`
: build the image

`-t`
: tag the image with 0 -> n names; in our example above, the tag is `postgres_test`. Tagging like this will give your image a version of `latest`, because we didn't set a version (which is fine right now). To set a version follow your name with a colon, then a version number (e.g. `postgres_test:1.0.0`)

`.`
: path to the Dockerfile relative to where you are running the build command.

Now, if you run `docker images`, you should see your named image show up there in the list.

### 3. Run a container based on the image

You ought to be able to run your image as a container with the following command
`docker run -d <your-image-name>`

`-d`
: run in _detatched_ mode. This just means you get control of your terminal back while the process is running.

You view all running containers with the command `docker ps`.
You can stop a particular conatiner from running with the command `docker stop <container_id>`.

Note that any time you `docker run` an image, you create a new container for the same image.
Do this a lot as you experiment, and you might end up with a long list of unused containers.
So, once you've run the container once, if you want to keep using it (and assuming you're in another terminal or detatched), simply run:
`docker start <container_id>` and `docker stop <container_id>` to bring it up and down.

### 4. Cleanup

To delete an image, you first need to delete the container(s) using it:

`docker ps` to find the containerId, then: `docker rm <container_id>`
`docker images` to list the images, then: `docker rmi <image_id>`
