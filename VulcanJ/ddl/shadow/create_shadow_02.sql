CREATE DATABASE 'test.fdb' ;

CREATE SHADOW 1 MANUAL CONDITIONAL 'test.shd' FILE 'test.s00' STARTING AT PAGE 1000;

DROP DATABASE;

