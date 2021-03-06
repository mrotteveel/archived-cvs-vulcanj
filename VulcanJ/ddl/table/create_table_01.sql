CREATE DATABASE 'test.fdb' default character set iso8859_1;

/*
Tested command:
*/
CREATE TABLE test(
 c1 SMALLINT,
 c2 INTEGER,
 c3 FLOAT,
 c4 DOUBLE PRECISION,
 c5 DATE,
 c6 TIME,
 c7 TIMESTAMP,
 c8 DECIMAL(18,4),
 c9 NUMERIC(1,1),
 c10 CHAR(800),
 c11 CHARACTER(9000),
 c12 CHARACTER VARYING(1600),
 c13 VARCHAR(12000),
 c14 NCHAR (12),
 c15 NATIONAL CHARACTER(20),
 c16 NATIONAL CHAR(200),
 c17 NCHAR VARYING(1600),
 c18 NATIONAL CHARACTER VARYING(16000),
 c19 NATIONAL CHAR VARYING(16000),
 c20 BLOB,
 c21 BLOB SUB_TYPE 1,
 c22 BLOB SEGMENT SIZE 512,
 c23 BLOB (1024,1)
);
SHOW TABLE test;

DROP DATABASE;

