 CREATE TABLE WORKS_P (EMPNUM   CHAR(3) REFERENCES STAFF_P(EMPNUM), PNUM     CHAR(3), HOURS    DECIMAL(5), FOREIGN KEY (PNUM) REFERENCES PROJ_P(PNUM)); 
 CREATE TABLE TTT(P1 DECIMAL(4) NOT NULL UNIQUE, P2 CHAR(4));
 INSERT INTO WORKS_P VALUES  ('E1','P1',40);
 INSERT INTO WORKS_P VALUES  ('E1','P2',20);
 INSERT INTO WORKS_P VALUES  ('E1','P3',80);
 INSERT INTO WORKS_P VALUES  ('E1','P4',20);
 INSERT INTO WORKS_P VALUES  ('E1','P5',12);
 INSERT INTO WORKS_P VALUES  ('E1','P6',12);
 INSERT INTO WORKS_P VALUES  ('E2','P1',40);
 INSERT INTO WORKS_P VALUES  ('E2','P2',80);
 INSERT INTO WORKS_P VALUES  ('E3','P2',20);
 INSERT INTO WORKS_P VALUES  ('E4','P2',20);
 INSERT INTO WORKS_P VALUES  ('E4','P4',40);
 INSERT INTO WORKS_P VALUES  ('E4','P5',80);
