CREATE DATABASE 'test.fdb' ;
SET TERM ^;
CREATE PROCEDURE test RETURNS (id INTEGER)AS
BEGIN
  id=1;
END ^

/*
Tested command:
*/
ALTER PROCEDURE test RETURNS (id INTEGER)AS
BEGIN
  id=2;
END ^
SET TERM ;^
EXECUTE PROCEDURE test;

DROP DATABASE;

