CREATE DATABASE 'test.fdb' ;
CREATE TABLE test( id INTEGER NOT NULL);
INSERT INTO test VALUES(2100000000);
INSERT INTO test VALUES(2100000000);
INSERT INTO test VALUES(2100000000);
INSERT INTO test VALUES(2100000000);

SELECT AVG(2100000000*id) FROM test;

DROP DATABASE;