SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

-- TEST:0514 SQLSTATE 23000: integrity constraint violation!
 CREATE TABLE STAFF (EMPNUM   CHAR(3) NOT NULL UNIQUE, EMPNAME  CHAR(20), GRADE    DECIMAL(4), CITY     CHAR(15));
 INSERT INTO STAFF VALUES ('E1','Alice',12,'Deale');

 INSERT INTO STAFF VALUES (NULL, NULL, NULL, NULL);
-- PASS:0514 If ERROR, integrity constraint violation, 0 rows
-- inserted?

 INSERT INTO STAFF VALUES ('E1', 'Agnetha', 12, 'Paris');
-- PASS:0514 If ERROR, integrity constraint violation, 0 rows
-- inserted?

DROP DATABASE;
