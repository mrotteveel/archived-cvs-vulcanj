CREATE DATABASE 'test.fdb' ;
CREATE TABLE tb(id INT);
INSERT INTO tb VALUES(3);
INSERT INTO tb VALUES(10);
COMMIT;

CREATE VIEW test (id,num) AS SELECT id,5 FROM tb;
SELECT * FROM test;

DROP DATABASE;
