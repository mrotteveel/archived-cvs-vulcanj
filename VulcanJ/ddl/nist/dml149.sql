SET NAMES ASCII;
CREATE DATABASE 'test.fdb' DEFAULT CHARACTER SET ISO8859_1;

-- TEST:0846 Feature 20, CAST functions (static) nits!
 CREATE TABLE USIG (C1 INT, C_1 INT);
 CREATE TABLE ECCO (C1 CHAR(2));
 INSERT INTO ECCO VALUES ('NL');
 CREATE TABLE NO_DUCK ( GOOSE       NUMERIC (4, 2), ALBATROSS   FLOAT, SEAGULL     INT, OSPREY      CHAR (10));
 SELECT CAST (100.5 AS DECIMAL (3)) FROM ECCO;
 INSERT INTO NO_DUCK VALUES ( CAST ('  23.23 ' AS NUMERIC (4, 2)), 1.57E-1, -9, 'QUACK');
 SELECT COUNT(*) FROM NO_DUCK WHERE GOOSE = 23.23;
 DELETE FROM NO_DUCK WHERE ALBATROSS - CAST ('   15.5E0    ' AS FLOAT) < 3E-1;
 SELECT COUNT(*) FROM NO_DUCK; 
 INSERT INTO NO_DUCK SELECT 22.22, CAST (C1 AS FLOAT), 0, C1 FROM ECCO;
 INSERT INTO NO_DUCK SELECT 22.22, 2.222E1, CAST (C1 AS INT), 'QUACK!' FROM ECCO;
 SELECT CAST (CAST (3 AS DEC (5, 3)) AS CHAR (5))  FROM ECCO; 
 INSERT INTO NO_DUCK VALUES ( 12.00, -10.5E0, 12, 'QUACK!');
 UPDATE NO_DUCK SET OSPREY = CAST (GOOSE AS CHAR (10)) WHERE SEAGULL = CAST (GOOSE AS DEC);
 SELECT OSPREY FROM NO_DUCK;
 SELECT OSPREY FROM NO_DUCK WHERE OSPREY < CAST (SEAGULL + 1 AS CHAR (10)) AND OSPREY = CAST (GOOSE * 1 AS CHAR (10)); 
 UPDATE NO_DUCK SET OSPREY = CAST (-SEAGULL AS CHAR (10));
 SELECT OSPREY FROM NO_DUCK;
 SELECT CAST (-GOOSE AS CHAR (5)) FROM NO_DUCK;
 UPDATE NO_DUCK SET ALBATROSS = 0.0;
 SELECT CAST (-ALBATROSS AS CHAR (5)) FROM NO_DUCK;
 SELECT CAST (0230E-1 AS CHAR (10)) FROM ECCO;
 SELECT CAST (0230E+1 AS CHAR (10)) FROM ECCO;
 DELETE FROM NO_DUCK;
 INSERT INTO NO_DUCK VALUES ( 0.00, -10.5E0, -0, 'QUACK!');
 UPDATE NO_DUCK SET OSPREY = CAST (ALBATROSS AS CHAR (10)) WHERE GOOSE = CAST (SEAGULL AS NUMERIC (2));
 SELECT OSPREY FROM NO_DUCK;
 UPDATE NO_DUCK SET ALBATROSS = -0.5;
 UPDATE NO_DUCK SET OSPREY = CAST (ALBATROSS AS CHAR (10)); 
 SELECT OSPREY FROM NO_DUCK; 
 UPDATE NO_DUCK SET OSPREY = CAST (-ALBATROSS AS CHAR (10)); 
 SELECT OSPREY FROM NO_DUCK;
 SELECT CAST (ALBATROSS AS CHAR (4)) FROM NO_DUCK;
 SELECT CAST (NULL AS CHAR (10)), GOOSE FROM NO_DUCK WHERE SEAGULL = 0 UNION SELECT OSPREY, CAST (SEAGULL AS NUMERIC (4, 2)) FROM NO_DUCK WHERE GOOSE > 10000; 
 UPDATE NO_DUCK SET GOOSE = CAST (NULL AS NUMERIC (2, 2)); 
 SELECT COUNT(*) FROM NO_DUCK WHERE GOOSE IS NULL;
 SELECT CAST (GOOSE AS INT) FROM NO_DUCK; 


DROP DATABASE;
