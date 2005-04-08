CREATE DATABASE 'test.fdb' ;
CREATE TABLE tb(id INT);
CREATE EXCEPTION test 'test exception';
SET TERM ^;
CREATE PROCEDURE test (id INT) RETURNS(d FLOAT)AS
BEGIN
  d=id+3.14;
END ^

CREATE TRIGGER test FOR tb BEFORE INSERT AS
DECLARE VARIABLE v1 SMALLINT;
DECLARE VARIABLE v2 INTEGER;
DECLARE VARIABLE v3 FLOAT;
DECLARE VARIABLE v4 DOUBLE PRECISION;
DECLARE VARIABLE v5 DECIMAL;
DECLARE VARIABLE v6 DECIMAL(4);
DECLARE VARIABLE v7 DECIMAL(4,2);
DECLARE VARIABLE v8 NUMERIC;
DECLARE VARIABLE v9 NUMERIC(5);
DECLARE VARIABLE v10 NUMERIC(5,3);
DECLARE VARIABLE v11 DATE;
DECLARE VARIABLE v12 TIME;
DECLARE VARIABLE v13 TIMESTAMP;
DECLARE VARIABLE v14 CHAR(1200);
DECLARE VARIABLE v15 CHAR(2000) CHARACTER SET WIN1250;
DECLARE VARIABLE v16 CHARACTER(3400);
DECLARE VARIABLE v17 CHARACTER VARYING(300);
DECLARE VARIABLE v18 NCHAR(1);
DECLARE VARIABLE v19 NATIONAL CHARACTER(30);
DECLARE VARIABLE v20 NATIONAL CHAR(130);
DECLARE VARIABLE v21 NATIONAL CHAR VARYING(30);
BEGIN
  BEGIN         /* Begin end */
    new.id=1;
  END
  v1=v2+34/3;   /* var assigment */
  /* comment */
  EXCEPTION test;
  EXECUTE PROCEDURE test(3) RETURNING_VALUES :v3;
  FOR SELECT id FROM tb INTO :v1 DO v2=v2+1;
  SELECT id FROM tb INTO :v2;
  UPDATE tb SET id=1;
  DELETE FROM tb;
  INSERT INTO tb(id)VALUES(3);
  IF(v10 IS NULL)THEN v1=2; ELSE v1=3;
  new.id=v4;
  POST_EVENT 'test';
  POST_EVENT v1;
  WHILE(v2<v4)DO BEGIN
    v3=v1;
  END
  WHEN ANY DO v21=4;
END^
SET TERM ;^
SHOW TRIGGER test;

DROP DATABASE;

