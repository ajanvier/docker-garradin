:warning: THIS PROJECT IS NOT MAINTAINED ANYMORE :warning: 
==============================================

Consider using [SamuelAllain](https://github.com/SamuelAllain)'s image as a replacement ➡️ https://hub.docker.com/r/samuelallain/garradin ([GitHub repo](https://github.com/SamuelAllain/docker-garradin))

It's up-to-date with PHP 8.1 and Garradin 1.1.25 (as of June 15th, 2022).


Garradin on Alpine Linux with Docker
----
![Docker Build Status](https://img.shields.io/docker/cloud/build/ajanvier/garradin)
![Docker Image Size](https://img.shields.io/docker/image-size/ajanvier/garradin)

A Docker image for [Garradin](http://dev.kd2.org/garradin/).

Usage
-----
Start the Docker container:

    docker run -p 80:80 \
        -v ./association.sqlite:/src/association.sqlite \
        ajanvier/garradin

Or use the example docker-compose.yml.

**An existing association.sqlite file is required to use this image.**
