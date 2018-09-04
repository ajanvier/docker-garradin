Garradin on Alpine Linux with Docker
==============================================
![Docker Build Status](https://img.shields.io/docker/build/ajanvier/garradin.svg)
![Docker Image Size](https://img.shields.io/microbadger/image-size/ajanvier/garradin.svg)

A Docker image for [Garradin](http://dev.kd2.org/garradin/).

Usage
-----
Start the Docker container:

    docker run -p 80:80 \
        -v ./association.sqlite:/src/association.sqlite \
        ajanvier/garradin

Or use the example docker-compose.yml.

**An existing association.sqlite file is required to use this image.**
