SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

-- TEST:0621 DATETIME with NULL's
 CREATE TABLE MERCH ( ITEMKEY INT, ORDERED DATE, RDATE DATE, RTIME TIME, SOLD TIMESTAMP); 

COMMIT;

 INSERT INTO MERCH VALUES (0, DATE '1993-11-23', NULL, NULL, NULL);
 INSERT INTO MERCH VALUES (1, DATE '1993-12-10', DATE '1994-01-03', CAST (NULL AS TIME), NULL); 
 INSERT INTO MERCH VALUES (2, DATE '1993-12-11', NULL, NULL, CAST (TIMESTAMP '1993-12-11 13:00:00' AS TIMESTAMP)); 
 INSERT INTO MERCH VALUES (4, DATE '1993-01-26', DATE '1993-01-27', NULL, NULL);
 SELECT COUNT(*) FROM MERCH A, MERCH B WHERE A.SOLD = B.SOLD;
 -- PASS:0621 If count = 1?
 SELECT COUNT(*) FROM MERCH A, MERCH B WHERE A.RTIME = B.RTIME;
-- PASS:0621 If count = 0?
 SELECT COUNT(*) FROM MERCH WHERE RDATE IS NULL;
-- PASS:0621 If count = 2?
 SELECT ITEMKEY FROM MERCH WHERE SOLD IS NOT NULL; 
-- PASS:0621 If 1 row selected and ITEMKEY is 2?

-- TEST:0623 OUTER JOINs with NULLs and empty tables!
 CREATE TABLE JNULL1 (C1 INT, C2 INT);
 CREATE TABLE JNULL2 (D1 INT, D2 INT); 
 CREATE VIEW JNULL3 AS SELECT C1, D1, D2 FROM JNULL1 LEFT OUTER JOIN JNULL2 ON C2 = D2; 
 CREATE VIEW JNULL4 AS SELECT D1, D2 FROM JNULL2; 
 INSERT INTO JNULL1 VALUES(NULL,NULL);
 INSERT INTO JNULL1 VALUES (1, NULL);
 INSERT INTO JNULL1 VALUES (NULL, 1);
 INSERT INTO JNULL1 VALUES (1, 1);
 INSERT INTO JNULL1 VALUES (2, 2);
 SELECT COUNT(*) FROM JNULL3;
-- PASS:0623 If count = 5?
 SELECT COUNT(*) FROM JNULL3 WHERE D2 IS NOT NULL OR D1 IS NOT NULL; 
-- PASS:0623 If count = 0?
 INSERT INTO JNULL2 SELECT * FROM JNULL1; 
 UPDATE JNULL2 SET D2 = 1 WHERE D2 = 2; 
 SELECT COUNT(*) FROM JNULL3;
-- PASS:0623 If count = 9?
 SELECT COUNT(*) FROM JNULL3 WHERE C1 IS NULL;
-- PASS:0623 If count = 4?
 SELECT COUNT(*)  FROM JNULL3 WHERE D1 IS NULL; 
-- PASS:0623 If count = 5?
 SELECT COUNT(*) FROM JNULL3 WHERE D2 IS NULL; 
--  PASS:0623 If count = 3?

 SELECT AVG(D1) * 10 FROM JNULL3;
-- In Firebird avg(d1) shows up as 10 because of integer rounding
-- original test called for value of 15.

-- TEST:0625 ADD COLUMN and DROP COLUMN!
 CREATE TABLE CHANGG (NAAM CHAR (14) NOT NULL PRIMARY KEY, AGE INT); 
 CREATE VIEW CHANGGVIEW AS SELECT * FROM CHANGG; 
-- PASS:0625 If view is created?
 ALTER TABLE CHANGG DROP NAAM RESTRICT; 
-- PASS:0625 If ERROR, view references NAAM?
 INSERT INTO CHANGG VALUES ('RALPH', 22);
 INSERT INTO CHANGG VALUES ('RUDOLPH', 54);
 INSERT INTO CHANGG VALUES ('QUEEG', 33); 
 INSERT INTO CHANGG VALUES ('BESSIE', 106);
 SELECT COUNT(*) FROM CHANGG WHERE DIVORCES IS NULL; 
-- PASS:0625 If ERROR, column does not exist?
 ALTER TABLE CHANGG ADD NUMBRR CHAR(11);
-- PASS:0625 If column is added?
 SELECT MAX(AGE) FROM CHANGGVIEW; 
-- PASS:0625 If value is 106?
 SELECT MAX(NUMBRR) FROM CHANGGVIEW;
-- PASS:0625 If ERROR, column does not exist ?
 commit;
 DROP VIEW CHANGGVIEW ; 

 ALTER TABLE CHANGG ADD DIVORCES INT DEFAULT 0; 
 SELECT COUNT(*) FROM CHANGG WHERE NUMBRR IS NOT NULL OR DIVORCES <> 0; 
-- PASS:0625 If count = 0?
 UPDATE CHANGG SET NUMBRR = '837-47-1847', DIVORCES = 3 WHERE NAAM = 'RUDOLPH';
 UPDATE CHANGG SET NUMBRR = '738-47-1847', DIVORCES = NULL WHERE NAAM = 'QUEEG';
 DELETE FROM CHANGG WHERE NUMBRR IS NULL;
 INSERT INTO CHANGG (NAAM, AGE, NUMBRR) VALUES ('GOOBER', 16, '000-10-0001');
 INSERT INTO CHANGG VALUES ('OLIVIA', 20, '111-11-1111', 0);
 SELECT AGE, NUMBRR, DIVORCES FROM CHANGG WHERE NAAM = 'RUDOLPH'; 
-- PASS:0625 If 1 row selected with values 54, 837-47-1847, 3 ?
 SELECT AGE, NUMBRR, DIVORCES FROM CHANGG WHERE NAAM = 'QUEEG'; 
-- PASS:0625 If 1 row selected with values 33, 738-47-1847, NULL ?
 SELECT AGE, NUMBRR, DIVORCES FROM CHANGG WHERE NAAM = 'GOOBER';
-- PASS:0625 If 1 row selected with values 16, 000-10-0001, 0 ?
 SELECT AGE, NUMBRR, DIVORCES FROM CHANGG WHERE NAAM = 'OLIVIA';
-- PASS:0625 If 1 row selected with values 20, 111-11-1111, 0 ?
 SELECT COUNT(*) FROM CHANGG; 
-- PASS:0625 If count = 4?
 ALTER TABLE CHANGG DROP AGE ;
-- PASS:0625 If column is dropped?
 ALTER TABLE CHANGG DROP DIVORCES RESTRICT; 
-- PASS:0625 If column is dropped?
 SELECT COUNT(*) FROM CHANGG WHERE AGE > 30; 
-- PASS:0625 If ERROR, column does not exist?
 SELECT COUNT(*) FROM CHANGG WHERE DIVORCES IS NULL; 
-- PASS:0625 If ERROR, column does not exist?
 SELECT NAAM  FROM CHANGG WHERE NUMBRR LIKE '%000%'; 
-- PASS:0625 If 1 row selected with value GOOBER ?
 commit;
 CREATE TABLE REFERENCE_CHANGG ( NAAM CHAR (14) NOT NULL PRIMARY KEY REFERENCES CHANGG); 
-- PASS:0625 If table is created?
 INSERT INTO REFERENCE_CHANGG VALUES ('NO SUCH NAAM');
			fail("Violation of Foreign Key constrain");
 ALTER TABLE CHANGG DROP NAAM RESTRICT; 
-- PASS:0625 If ERROR, referential constraint exists?

-- TEST:0631 Datetimes in a <default clause>!
 CREATE TABLE OBITUARIES ( NAAM CHAR (14) NOT NULL PRIMARY KEY, BORN DATE DEFAULT DATE '1880-01-01', DIED DATE DEFAULT CURRENT_DATE, ENTERED TIMESTAMP DEFAULT CURRENT_TIMESTAMP, TESTING1 DATE, TESTING2 TIMESTAMP); 
-- PASS:0631 If table is created?

DROP DATABASE;
