SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

-- TEST:0889 FIPS sizing, INTEGER binary prec >= 31!

 CREATE TABLE NOMAIL (C1 INT);
 INSERT INTO NOMAIL VALUES (2147483647);
 INSERT INTO NOMAIL VALUES (-2147483647);
 SELECT C1 FROM NOMAIL WHERE C1 > 0; 
-- PASS:0889 If C1 = 2147483647?

 SELECT C1 FROM NOMAIL WHERE C1 < 0; 
-- PASS:0889 If C1 = -2147483647?

 SELECT C1 - 2147483646 FROM NOMAIL WHERE C1 > 0; 
-- PASS:0889 If value = 1?

 SELECT C1 + 2147483646 FROM NOMAIL WHERE C1 < 0;
-- PASS:0889 If value = -1?

 UPDATE NOMAIL SET C1 = C1 + 2147483646 WHERE C1 < 0; 
 SELECT C1 FROM NOMAIL WHERE C1 < 0; 
-- PASS:0889 If C1 = -1?

 UPDATE NOMAIL SET C1 = C1 - 1;
 SELECT COUNT(*) FROM NOMAIL WHERE C1 = 2147483645;
-- PASS:0889 If COUNT = 0?

 SELECT COUNT(*) FROM NOMAIL WHERE C1 = 2147483646; 
-- PASS:0889 If COUNT = 1?
		
 SELECT COUNT(*) FROM NOMAIL WHERE C1 = 2147483647; 
-- PASS:0889 If COUNT = 0?


-- TEST:0890 FIPS sizing, SMALLINT binary prec >= 15!
 CREATE TABLE YESMAIL (C1 SMALLINT); 
 INSERT INTO YESMAIL VALUES (32767);
 INSERT INTO YESMAIL VALUES (-32767); 
 SELECT C1 FROM YESMAIL WHERE C1 > 0; 
-- PASS:0890 If C1 = 32767?

 SELECT C1 FROM YESMAIL WHERE C1 < 0; 
-- PASS:0890 If C1 = -32767?

 SELECT C1 - 32766 FROM YESMAIL WHERE C1 > 0; 
-- PASS:0890 If value = 1?

 SELECT C1 + 32766 FROM YESMAIL WHERE C1 < 0; 
-- PASS:0890 If value = -1?

 UPDATE YESMAIL SET C1 = C1 + 32766 WHERE C1 < 0;
 SELECT C1 FROM YESMAIL WHERE C1 < 0; 
-- PASS:0890 If C1 = -1?

 UPDATE YESMAIL SET C1 = C1 - 1;
 SELECT COUNT(*) FROM YESMAIL WHERE C1 = 32765; 
-- PASS:0890 If COUNT = 0?

 SELECT COUNT(*) FROM YESMAIL WHERE C1 = 32766; 
-- PASS:0890 If COUNT = 1?

 SELECT COUNT(*) FROM YESMAIL WHERE C1 = 32767; 
-- PASS:0890 If COUNT = 0?
   
 DROP DATABASE;