# Задание

Должно содержать одну функцию testfunction, написанную на C,
принимающую два аргумента N (целое) и A (символ), возвращающую N – записей,
состоящих из двух полей «порядковый номер» и «строка».

 В поле «порядковый номер» выводить число от 1..N, в поле «строка» выводить строку из повторяющихся символов A в количестве,
 равном значению поля «порядковый номер» для данной записи.


CREATE OR REPLACE FUNCTION retcomposite(integer, integer,integer)
    RETURNS SETOF __retcomposite
    AS 'hello_ext', 'retcomposite'
    LANGUAGE C IMMUTABLE STRICT;