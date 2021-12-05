#!/bin/bash

# docker build -t pgsql .
docker run --rm -d --name  pgsql  -p 0.0.0.0:5432:5432 pgsql 
sleep 3
psql -h 172.17.0.2 -p 5432 -U postgres  -f test.sql test

docker kill pgsql
# docker rmi  pgsql