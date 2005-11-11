SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

 CREATE TABLE T850 ( T850KEY INT NOT NULL UNIQUE, T850C   CHAR (11), T850VC  VARCHAR (10), T850LVC VARCHAR (20)); 
 INSERT INTO T850 VALUES ( 10, '1234567890', '1234567890', '1234567890   ');
 INSERT INTO T850 VALUES ( 5, '12345     ', '12345', '12345');
 INSERT INTO T850 VALUES ( 0, '          ', '', '                    ');
 SELECT COUNT(*) FROM T850 WHERE T850C = T850VC;
-- PASS:0850 If COUNT = 3?

 SELECT T850KEY FROM T850 WHERE T850VC = '1234567890     ';
-- PASS:0850 If T850KEY = 10?

 SELECT T850KEY FROM T850 WHERE T850VC = '12345  ';
-- PASS:0850 If T850KEY = 5?

 SELECT T850KEY FROM T850 WHERE T850VC = '';
-- PASS:0850 If T850KEY = 0?
-- actually the nist test was wrong here, should be T850VC=''

 SELECT COUNT(*) FROM T850 WHERE T850C = '1234567890';
 SELECT COUNT(*) FROM T850 WHERE T850C = '12345';
 SELECT COUNT(*) FROM T850 WHERE T850VC = T850LVC;
-- PASS:0850 If COUNT = 3?

 SELECT COUNT(*) FROM T850 WHERE T850VC = '12345          ';
-- PASS:0850 If COUNT = 1?

 SELECT COUNT(*) FROM T850 WHERE T850VC = '12345  '; 
-- PASS:0850 If COUNT = 1?

 SELECT COUNT(*) FROM T850 WHERE T850LVC = '12345          ';
-- PASS:0850 If COUNT = 1?

 SELECT COUNT(*) FROM T850 WHERE T850LVC = '12345  ';
-- PASS:0850 If COUNT = 1?

 SELECT COUNT(*) FROM T850 WHERE T850C = '12345          ';
-- PASS:0850 If COUNT = 1?

 SELECT COUNT(*) FROM T850 WHERE T850C = '12345  ';
-- PASS:0850 If COUNT = 1?

DROP DATABASE;