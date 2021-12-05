# Example extention testfunction
example of postgres extension

the funnction in parameters:

	 n - int - count repeated symbols
	 c - char - symbol

Return count rows with repeaten by number row till n. 


## ONLY BUILD

	docker build -t pgsql .
	docker run --rm -d --name  pgsql  -p 0.0.0.0:5432:5432 pgsql 

check IP address in the next console

	docker inspect pgsql | grep \"IPAddress | awk '{print $2}' 

and start test
 
	psql -h 172.17.0.2 -p 5432 -U postgres  -f test.sql test

or You can make run only one script

	Start the script start.sh


## SQL INSTALLATION:

	CREATE EXTENSION testfunction;
	CREATE  TYPE __testfunction AS (f1 integer, f2 varchar);
	CREATE TYPE
	CREATE OR REPLACE FUNCTION testfunction(integer, char)
	    RETURNS SETOF __testfunction
	    AS 'testfunction', 'testfunction'
	    LANGUAGE C IMMUTABLE STRICT;
	CREATE FUNCTION
	psql (14.1)
	Type "help" for help.

## USAGE

	test=# SELECT testfunction(5,'A');
	 testfunction 
	--------------
	 (1,A)
	 (2,AA)
	 (3,AAA)
	 (4,AAAA)
	 (5,AAAAA)
	(5 rows)

	test=# 

## RESULT

	$psql -h 172.17.0.2 -p 5432 -U postgres test
	psql (12.9 (Ubuntu 12.9-0ubuntu0.20.04.1), server 14.1)
	WARNING: psql major version 12, server major version 14.
	         Some psql features might not work.
	Type "help" for help.

	test=# SELECT testfunction(3,'Z')l
	test-# ;
	    l    
	---------
	 (1,Z)
	 (2,ZZ)
	 (3,ZZZ)
	(3 rows)

	test=# 


Check docker host IP:

	 docker inspect pgsql | grep \"IPAddress | awk '{print $2}' 
	"172.17.0.2",
