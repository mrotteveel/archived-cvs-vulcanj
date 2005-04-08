CREATE DATABASE 'test.fdb' ;
CREATE TABLE t( a INTEGER);
INSERT INTO t VALUES(0);
INSERT INTO t VALUES(1);
INSERT INTO t VALUES(2);
INSERT INTO t VALUES(3);
INSERT INTO t VALUES(4);
COMMIT;

CREATE UNIQUE INDEX test ON t(a);
SHOW INDEX test;

DROP DATABASE;

