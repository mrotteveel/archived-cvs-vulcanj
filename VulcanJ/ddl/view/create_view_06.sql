CREATE DATABASE 'test.fdb' ;
CREATE TABLE tb(id INT);

CREATE VIEW test (id) AS SELECT id FROM tb;
INSERT INTO test VALUES(2);
COMMIT;
SELECT * FROM test;

DROP DATABASE;

