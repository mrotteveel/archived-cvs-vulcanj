CREATE DATABASE 'test.fdb' ;
CREATE TABLE test( id INTEGER NOT NULL CONSTRAINT unq UNIQUE,
                   text VARCHAR(32));

ALTER TABLE test DROP CONSTRAINT unq;
SHOW TABLE test;

DROP DATABASE;

