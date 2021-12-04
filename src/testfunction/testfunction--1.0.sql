-- complain if script is sourced in psql, 
-- CREATE EXTENSION testfunction;

CREATE  TYPE __testfunction AS (f1 integer, f2 varchar);

CREATE OR REPLACE FUNCTION testfunction(integer, char)
    RETURNS SETOF __testfunction
    AS 'testfunction', 'testfunction'
    LANGUAGE C IMMUTABLE STRICT;
