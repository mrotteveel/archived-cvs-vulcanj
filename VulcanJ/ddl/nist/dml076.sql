SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

INPUT ddl/input/base-tab.sql;
COMMIT WORK;

-- TEST:0436 NULL values for various SQL data types!

 CREATE TABLE BB (CHARTEST     CHAR);
 CREATE TABLE EE (INTTEST     INTEGER);
 CREATE TABLE GG (REALTEST     REAL);
 CREATE TABLE HH (SMALLTEST  SMALLINT);
 CREATE TABLE II (DOUBLETEST  DOUBLE PRECISION);
 CREATE TABLE JJ (FLOATTEST  FLOAT);
 CREATE TABLE MM (NUMTEST  NUMERIC);
 CREATE TABLE SS (NUMTEST  DEC(13,6));

COMMIT WORK;

 INSERT INTO BB VALUES(NULL);
 INSERT INTO EE VALUES(NULL);
 INSERT INTO GG VALUES(NULL);
 INSERT INTO HH VALUES(NULL);
 INSERT INTO II VALUES(NULL);
 INSERT INTO JJ VALUES(NULL);
 INSERT INTO MM VALUES(NULL);
 INSERT INTO SS VALUES(NULL);
 SELECT CHARTEST FROM BB;
-- PASS:0436 If CHARTEST is NULL (Implementor defined print format)?

 SELECT INTTEST FROM EE;
-- PASS:0436 If INTTEST is NULL (Implementor defined print format)?

 SELECT REALTEST FROM GG;
-- PASS:0436 If REALTEST is NULL (Implementor defined print format)?

 SELECT COUNT(*) FROM GG WHERE REALTEST IS NULL;
-- PASS:0436 If count = 1?

 SELECT SMALLTEST FROM HH;
-- PASS:0436 If SMALLTEST is NULL (Implementor defined print format)?

 SELECT DOUBLETEST FROM II;
-- PASS:0436 If DOUBLETEST is NULL (Implementor defined print format)?

 SELECT COUNT(*) FROM II WHERE DOUBLETEST IS NULL;
-- PASS:0436 If count = 1?

 SELECT FLOATTEST FROM JJ;
-- PASS:0436 If FLOATTEST is NULL (Implementor defined print format)?

 SELECT COUNT(*) FROM JJ WHERE FLOATTEST IS NULL;
-- PASS:0436 If count = 1?

 SELECT NUMTEST FROM MM;
-- PASS:0436 If NUMTEST is NULL (Implementor defined print format)?

 SELECT NUMTEST FROM SS;
-- PASS:0436 If NUMTEST is NULL (Implementor defined print format)?

DROP DATABASE;
