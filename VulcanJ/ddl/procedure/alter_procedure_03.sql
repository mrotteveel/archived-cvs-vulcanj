CREATE DATABASE 'test.fdb' ;

SET TERM ^;
ALTER PROCEDURE test RETURNS (id INTEGER)AS
BEGIN
  id=2;
END ^
SET TERM ;^


DROP DATABASE;

