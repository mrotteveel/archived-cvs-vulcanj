-- S0299071
-- Defect title: LONGISH CHARACTER CONSTANT ON INSERT DOESN'T WORK 
SET NAMES ASCII;

CREATE DATABASE 'test.fdb' ;
recreate table foo (package char(700));
insert into foo values('123456789012345678901234567890123456789012345678901' ||
'23456789012345678901234567890123456789012345678901234567890123456789012345678901' ||
'23456789012345678901234567890123456789012345678901234567890123456789012345678901' ||
'23456789012345678901234567890123456789012345678901234567890123456789012345678901' ||
'23456789012345678901234567890123456789012345678901234567890123456789012345678901' ||
'23456789012345678901234567890123456789012345678901234567890123456789012345678901' ||
'23456789012345678901234567890123456789012345678901234567890123456789012345678901' ||
'23456789012345678901234567890123456789012345678901234567890123456789012345678901' ||
'2345678901234567890123456789012345678901234567890123456789012345678901234567890'
);

select * from foo;
drop database;