CREATE DATABASE 'test.fdb' ;

SELECT CAST(CAST('1.4.2002 0:59:59.1' AS TIMESTAMP) AS CHAR(50)) FROM rdb$Database;

DROP DATABASE;

