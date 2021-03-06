SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

INPUT ddl/input/base-tab.sql;
COMMIT;


-- TEST:0878 Keyword COLUMN in ALTER TABLE is optional!
-- this test was reduced for firebird

 CREATE TABLE T0878 (C1 INT);
 ALTER TABLE T0878 ADD C2 CHAR (4);
 ALTER TABLE T0878 DROP C1 ; 
 INSERT INTO T0878 VALUES ('ABCD'); 
 SELECT * FROM T0878;
-- PASS:0878 If answer = 'ABCD'?

DROP DATABASE;
