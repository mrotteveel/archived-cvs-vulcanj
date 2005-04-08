CREATE DATABASE 'test.fdb' ;
CREATE TABLE test( id INTEGER NOT NULL CONSTRAINT unq UNIQUE,
                   text VARCHAR(32));
SET TERM ^;
CREATE TRIGGER tg FOR test BEFORE UPDATE
AS
BEGIN
  new.id=1;
END ^
SET TERM ;^

ALTER TRIGGER tg AFTER INSERT;
SHOW TRIGGER tg;

DROP DATABASE;

