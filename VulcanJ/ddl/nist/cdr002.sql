SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

 CREATE TABLE STAFF5 (EMPNUM    CHAR(3) NOT NULL,EMPNAME  CHAR(20), GRADE DECIMAL(4), CITY   CHAR(15), PRIMARY KEY (EMPNUM), CHECK (GRADE > 0 AND GRADE < 20));
 INSERT INTO STAFF5 VALUES('E1','Alice',0,'Deale');
 INSERT INTO STAFF5 VALUES('E3','Susan',11,'Hawaii');
 INSERT INTO STAFF5 VALUES('E2','Tom',22,'Newyork');
 SELECT COUNT(*) FROM STAFF5;

DROP DATABASE;
