create database 'test.fdb';

set autoddl off;
recreate table foo (i integer not null);
commit;
drop table foo;
select * from foo;
-- should fail, per steve, with table not found.
commit;

set autoddl off;
SET TERM ^;
CREATE PROCEDURE test RETURNS(id INT) AS
BEGIN
  ID=5;
END ^
SET TERM ;^
commit;
drop procedure test;
execute procedure test;
-- should fail, per steve with procedure undefined
commit;

set autoddl off;
DECLARE EXTERNAL FUNCTION ascii_val
	CHAR(1)
	RETURNS INTEGER BY VALUE
	ENTRY_POINT 'IB_UDF_ascii_val' MODULE_NAME 'ib_udf';
commit;
drop external function ascii_val;
select ascii_val(A) from (select 'a' as A from rdb$database);
-- should fail, per steve with external function undefined

drop database;

