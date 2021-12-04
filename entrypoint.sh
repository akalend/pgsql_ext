#!/bin/bash
/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l /tmp/logfile start 
/usr/local/pgsql/bin/createdb test
# /usr/local/pgsql/bin/psql test
/usr/local/pgsql/bin/psql -d test -a -f /src/testfunction--1.0.sql 
/usr/local/pgsql/bin/psql test

