CREATE DATABASE 'test.fdb' ;

SET TERM ^;
CREATE PROCEDURE test RETURNS(id INT)AS
BEGIN
  ID=4;
  SUSPEND;
  ID=5;
  SUSPEND;
END ^
SET TERM ;^
SHOW PROCEDURE test;

DROP DATABASE;

