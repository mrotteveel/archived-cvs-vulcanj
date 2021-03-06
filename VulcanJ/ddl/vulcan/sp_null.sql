-- S0320345
-- PORTAL: STORED PROCEDURE RETURNS 0, NOT NULL AS EXPECTED

create database 'test.fdb' default character set iso8859_1;

CREATE TABLE PERMS( P SMALLINT );

SET TERM ^;
CREATE PROCEDURE "GETPERM" ( P_ID SMALLINT ) RETURNS ( "PERM" SMALLINT )
  AS
    BEGIN
      SELECT MIN( p ) FROM PERMS
         INTO :PERM;
      SUSPEND;
    END^

SET TERM ;^

-- Should result in a NULL result, but actually returns 0
SELECT PERM FROM GETPERM( 3 );

drop database;
