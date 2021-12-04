#!/bin/bash

docker build -t pgsql .
docker run --rm -d --name  pgsql  -p 0.0.0.0:5432:5432 pgsql /sbin/entrypoint.sh

docker run --rm -it  -p 0.0.0.0:5432:5432 pgsql /sbin/entrypoint.sh

# docker kill pgsql
# docker rmi  pgsql