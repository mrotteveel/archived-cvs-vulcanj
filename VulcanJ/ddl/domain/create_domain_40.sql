CREATE DATABASE 'test.fdb' ;

CREATE DOMAIN test AS VARCHAR(32) CHARACTER SET DOS437 DEFAULT USER NOT NULL CHECK(VALUE LIKE 'ER%') COLLATE DB_ITA437;
SHOW DOMAIN test;

DROP DATABASE;

