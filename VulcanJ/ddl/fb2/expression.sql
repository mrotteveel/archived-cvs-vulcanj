SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET iso8859_1;

-- simple test for expression indexes per release notes
-- SAS DEFECT S0288923
-- NF: FIREBIRD SHOULD ALLOW EXPRESSION INDEXES

SET PLAN ON;
CREATE TABLE T1 (COL1 CHAR(20));


INSERT INTO T1 VALUES ('mary');
INSERT INTO T1 VALUES ('had');
INSERT INTO T1 VALUES ('a');
INSERT INTO T1 VALUES ('little');
INSERT INTO T1 VALUES ('lamb');
COMMIT;

CREATE INDEX IDX1 ON T1
COMPUTED BY ( UPPER(COL1 COLLATE EN_US) );
COMMIT;

/**/
SELECT * FROM T1
WHERE UPPER(COL1 COLLATE EN_US) = 'mary';
-- PLAN (T1 INDEX (IDX1))

 
CREATE TABLE T2 (COL2 TIMESTAMP);
INSERT INTO T2 VALUES ('2010-10-31 14:20:00.0000'); 
INSERT INTO T2 VALUES ('2006-10-30 14:20:00.0000');
COMMIT;

CREATE INDEX IDX2 ON T2
COMPUTED BY ( EXTRACT(YEAR FROM COL2) || EXTRACT(MONTH FROM COL2) );
COMMIT;

/**/
SELECT * FROM T2
ORDER BY EXTRACT(YEAR FROM COL2) || EXTRACT(MONTH FROM COL2);
-- PLAN (T2 ORDER IDX2)
COMMIT;

show indexes;

drop database ;