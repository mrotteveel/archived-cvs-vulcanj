CREATE DATABASE 'test.fdb' ;

SET TERM ^;
CREATE PROCEDURE test RETURNS(id INT)AS
BEGIN
  COMMIT;
END ^
SET TERM ;^


DROP DATABASE;
