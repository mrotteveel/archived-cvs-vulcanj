create database 'test.fdb' page_size=16834 default character set iso8859_1; 

recreate table t (i integer not null primary key,
   c char(10) character set unicode_fss); 

insert into t values (1, 'text'); 	

recreate table t (i integer not null primary key,
   c char(10) ); 

drop database;
