CREATE DATABASE 'test.fdb' ;
CREATE TABLE test( id INTEGER);

ALTER TABLE test ADD text varchar(32) DEFAULT CURRENT_ROLE NOT NULL CONSTRAINT pk PRIMARY KEY;
SHOW TABLE test;

DROP DATABASE;

