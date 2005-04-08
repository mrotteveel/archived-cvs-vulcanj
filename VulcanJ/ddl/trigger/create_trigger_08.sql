CREATE DATABASE 'test.fdb' ;
CREATE TABLE tb(id INT);

SET TERM ^;
CREATE TRIGGER test FOR tb AFTER DELETE POSITION 12 AS
BEGIN
  old.id=1;
END^
SET TERM ;^
SHOW TRIGGER test;

DROP DATABASE;

