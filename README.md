# Example extention testfunction
example of postgres extension

the funnction in parameters:

	 n - int - count repeated symbols
	 c - char - symbol

Return count rows with repeaten by number row till n. 

## BUILD

	Start the script start.sh


## INSTALLATION:

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