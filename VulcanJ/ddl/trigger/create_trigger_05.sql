CREATE DATABASE 'test.fdb' ;
CREATE TABLE tb(id INT);

SET TERM ^;
CREATE TRIGGER test FOR tb BEFORE DELETE AS
BEGIN
  old.id=1;
END^
SET TERM ;^
SHOW TRIGGER test;


DROP DATABASE;

