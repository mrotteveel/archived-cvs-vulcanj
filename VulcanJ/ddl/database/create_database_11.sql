CREATE DATABASE 'test.fdb' 
  FILE 'test.g00' STARTING AT PAGE 201
  FILE 'test.g01' STARTING AT PAGE 601
  FILE 'test.g02' STARTING AT PAGE 1001;

SELECT RDB$FILE_SEQUENCE,RDB$FILE_START,RDB$FILE_LENGTH 
  FROM RDB$FILES;

DROP DATABASE;

