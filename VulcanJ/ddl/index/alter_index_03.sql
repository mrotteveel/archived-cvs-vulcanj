CREATE DATABASE 'test.fdb' ;
CREATE TABLE t( a INTEGER);
CREATE UNIQUE INDEX i ON t(a);

ALTER INDEX i INACTIVE;
COMMIT;
SELECT RDB$INDEX_NAME, RDB$INDEX_INACTIVE FROM RDB$INDICES WHERE RDB$INDEX_NAME='I';

DROP DATABASE;

