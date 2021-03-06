SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

 CREATE TABLE STAFF13 (EMPNUM    CHAR(3) NOT NULL, EMPNAME  CHAR(20), GRADE DECIMAL(4), CITY   CHAR(15), PRIMARY KEY (EMPNUM), CHECK (NOT EMPNAME IS NULL) );
 INSERT INTO STAFF13 VALUES('E1','Alice',36,'Deale');
 SELECT COUNT(*) FROM STAFF13;
 INSERT INTO STAFF13 VALUES('E2',NULL,36,'Newyork');
 SELECT COUNT(*) FROM STAFF13;
 CREATE TABLE STAFF9 (EMPNUM CHAR(3) NOT NULL PRIMARY KEY, EMPNAME CHAR(20), GRADE DECIMAL(4), CITY CHAR(15), CHECK (EMPNAME NOT LIKE 'T%'));
 INSERT INTO STAFF9 VALUES('E1','Thomas',0,'Deale');
 INSERT INTO STAFF9 VALUES('E2','Tom',22,'Newyork');
 INSERT INTO STAFF9 VALUES('E3','Susan',11,'Hawaii');
 SELECT COUNT(*) FROM STAFF9;
 CREATE TABLE STAFF10 (EMPNUM    CHAR(3) NOT NULL, EMPNAME  CHAR(20), GRADE DECIMAL(4), CITY   CHAR(15), PRIMARY KEY (EMPNUM), CHECK (GRADE NOT IN (5,22)));
 INSERT INTO STAFF10 VALUES('E1','Thomas',5,'Deale');
 INSERT INTO STAFF10 VALUES('E2','Tom',22,'Newyork');
 INSERT INTO STAFF10 VALUES('E3','Susan',11,'Hawaii');
 SELECT COUNT(*) FROM STAFF10;
 CREATE TABLE STAFF5 (EMPNUM    CHAR(3) NOT NULL,EMPNAME  CHAR(20), GRADE DECIMAL(4), CITY   CHAR(15), PRIMARY KEY (EMPNUM), CHECK (GRADE > 0 AND GRADE < 20));
 INSERT INTO STAFF5 VALUES('R9','Alice',15,'Deale');
 SELECT COUNT(*) FROM STAFF5;
 UPDATE STAFF5 SET GRADE = 10 * 10 / 5 + 1 WHERE EMPNUM = 'R9';
 SELECT COUNT(*) FROM STAFF5 WHERE GRADE = 15;

DROP DATABASE;
