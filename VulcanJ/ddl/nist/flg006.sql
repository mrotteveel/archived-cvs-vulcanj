SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

-- TEST:0299 FIPS Flagger - identifier length > 18!
-- NOTE: OPTIONAL FIPS Flagger test
-- FIPS Flagger Test. Support for this feature is not required.
-- If supported, this feature must be flagged as an extension to the
-- standard.

-- NOTE:0299 Delete any SQL statement which causes
-- NOTE:0299 this procedure to abort. But, there
-- NOTE:0299 is no need to remove a statement with a warning.
 CREATE TABLE TABLEFGHIJKLMNOPQ19 (COL2 INTEGER);
 CREATE TABLE SHORTTABLE (COLUMN123456789IS19  INTEGER);
 CREATE TABLE BASETABLE1 (COL1  INTEGER);
 CREATE VIEW VIEWABCDEFGHIKLMN19 (COL3) AS SELECT COL1 FROM BASETABLE1;
 INSERT INTO TABLEFGHIJKLMNOPQ19 VALUES (299);
 INSERT INTO SHORTTABLE VALUES (299);
 INSERT INTO BASETABLE1 VALUES (299);
 SELECT COL2 FROM TABLEFGHIJKLMNOPQ19;
 SELECT COLUMN123456789IS19 FROM SHORTTABLE;
 SELECT COL3 FROM VIEWABCDEFGHIKLMN19;
-- PASS:0299 If the value 299 is selected by any of SQL SELECTs above?

DROP DATABASE;