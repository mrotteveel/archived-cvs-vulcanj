SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

-- TEST:0582 Implicit numeric casting (feature 9) static!

 CREATE TABLE ICAST2 (C1 INT, C2 DOUBLE PRECISION, C3 NUMERIC(5,3));
 INSERT INTO ICAST2 VALUES (.31416E+1, 3, .3142293E+1);
-- PASS:0582 If 1 row is inserted?

 SELECT C1, C2, C3 FROM ICAST2;
-- PASS:0582 If 1 row is selected with C1 = 3 and C3 = 3.142?

 UPDATE ICAST2 SET C1 = 5.2413E+0, C2 = 5, C3 = 5.2413E+0;
-- PASS:0582 If 1 row is updated?

 SELECT C1, C2, C3 FROM ICAST2;
-- PASS:0582 If 1 row is selected with C1 = 5 and C3 = 5.241?

 UPDATE ICAST2 SET C1 = 6.28E+0, C2 = 2.1E+0, C3 = .07E+2;
-- PASS:0582 If 1 row is updated?

 UPDATE ICAST2 SET C1 = C2, C3 = C3 + C2;
-- PASS:0582 If 1 row is updated?

 SELECT C1, C2, C3 FROM ICAST2;
-- PASS:0582 If 1 row is selected with C1 = 2 and C3 = 9.100?

DROP DATABASE;
