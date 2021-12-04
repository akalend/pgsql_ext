#!/bin/bash

docker build -t pgsql .
docker run --rm -d  -p 0.0.0.0:5432:5432 pgsql /sbin/entrypoint.sh


# docker kill pgsql
# docker rm   pgsql
# docker rmi  pgsql