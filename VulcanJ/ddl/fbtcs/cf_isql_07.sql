create database 'test.fdb';

/*
** Test case which defines computed field on more than one column
** of different types.
*/

/*---------------------------*/
/* Computed by integer*float */
/*---------------------------*/
create table t0 (f_integer integer, f_float float, integer_float computed by (f_integer*f_float));
show table t0;
insert into t0(f_integer,f_float) values(10,10.12);
insert into t0(f_integer,f_float) values(11,11.12);
select 'Passed 1 - Insert' from t0 where integer_float = f_integer*f_float having count(*) = 2;
select * from t0;

update t0 set f_integer = 12, f_float = 12.12 where f_integer = 10;
update t0 set f_integer = 13                  where f_integer = 11;
select 'Passed 1 - Update' from t0 where integer_float = f_integer*f_float having count(*) = 2;
select * from t0;

/*-------------------------------*/
/* Computed by integer*character */ 
/*-------------------------------*/
create table t5 (f_integer integer, f_char char(5), integer_char computed by (f_integer*f_char));
show table t5;
insert into t5(f_integer, f_char) values(10,'10');
insert into t5(f_integer, f_char) values(11,'11');
select 'Passed 2 - Insert' from t5 where integer_char = f_integer*f_char having count(*) = 2;
select * from t5;

update t5 set f_integer = 12, f_char = '12' where f_integer = 10;
update t5 set f_integer = 13                where f_integer = 11;
select 'Passed 2 - Update' from t5 where integer_char = f_integer*f_char having count(*) = 2;
select * from t5;

/*-----------------------------*/
/* Computed by float*character */ 
/*-----------------------------*/
create table t10 (f_float float, f_char char(5), float_char computed by (f_float*f_char));
show table t10;
insert into t10(f_float, f_char) values(10.12,'10');
insert into t10(f_float, f_char) values(11.12,'11');
select 'Passed 2 - Insert' from t10 where float_char = f_float*f_char having count(*) = 2;

update t10 set f_float = 12.12, f_char = '12' where f_float = 10.12;
update t10 set f_float = 13.12                where f_float = 11.12;
select 'Passed 2 - Update' from t10 where float_char = f_float*f_char having count(*) = 2;

/*------------------------*/
/* Computed by float+date */
/* Note: Currently the associativity doesn't work. That is, the test case is */
/*       using date+float as expression. This is suppose to be fixed in      */
/*       build T.                                                            */
/*------------------------*/
create table t15 (f_float float, f_date date, float_date computed by (f_date+f_float));
show table t15;
insert into t15(f_float, f_date) values(10.12,'today');
insert into t15(f_float, f_date) values(11.12,'today');
select 'Passed 3 - Insert' from t15 where float_date = f_date+f_float having count(*) = 2;

update t15 set f_float = 12.12, f_date = 'tomorrow' where f_float = 10.12;
update t15 set f_float = 13.12                      where f_float = 11.12;
select 'Passed 3 - Update' from t15 where float_date = f_date+f_float having count(*) = 2;

/*-------------------------*/
/* Computed by char - date */
/*-------------------------*/
create table t20 (f_char char(15), f_date date, char_date computed by (cast (f_char as date) - f_date));
show table t20;
insert into t20(f_char, f_date) values('01/20/93','01/01/93');
insert into t20(f_char, f_date) values('02/27/93','02/01/93');
select 'Passed 4 - Insert' from t20 where char_date = cast (f_char as date ) - f_date having count(*) = 2;

update t20 set f_char = '03/20/93', f_date = '03/01/93' where f_char = '01/20/93';
update t20 set f_char = '02/26/93'                      where f_char = '02/27/93';
select 'Passed 4 - Update' from t20 where char_date = cast (f_char as date) - f_date having count(*) = 2;

/*----------------------------*/
/* Computed by "10" + integer */
/*----------------------------*/
create table t25 (f_integer integer, literal_integer computed by (cast ('10' as integer) + f_integer));
show table t25;
insert into t25(f_integer) values(10);
insert into t25(f_integer) values(11);
select 'Passed 5 - Insert' from t25 where literal_integer = cast ('10' as integer) + f_integer having count(*) = 2; 

update t25 set f_integer = 12  where f_integer = 10;
select 'Passed 5 - Update' from t25 where literal_integer = cast ('10' as integer) + f_integer having count(*) = 2;

/*----------------------------*/
/* Computed by "1.12" + float */
/*----------------------------*/
create table t30 (f_float float, literal_float computed by (cast ('1.12' as float) + f_float));
show table t30;
insert into t30(f_float) values(10.12);
insert into t30(f_float) values(11.12);
select 'Passed 6 - Insert' from t30 where (literal_float = cast ('1.12' as float) + f_float) having count(*) = 2;

update t30 set f_float = 12.12 where f_float = 10.12;
select 'Passed 6 - Update' from t30 where (literal_float = cast ('1.12' as float) + f_float) having count(*) = 2;
 
/*-------------------------------*/
/* Computed by "01/01/95" - date */
/*-------------------------------*/
create table t35 (f_date date, literal_date computed by (DATE '01/01/95' - f_date));
show table t35;
insert into t35(f_date) values('01/01/94');
insert into t35(f_date) values('02/01/94');
select 'Passed 7 - Insert' from t35 where literal_date = DATE '01/01/95' - f_date having count(*) = 2;

update t35 set f_date = '03/01/94' where f_date = '01/01/94';
select 'Passed 7 - Update' from t35 where literal_date = DATE '01/01/95' - f_date having count(*) = 2;

drop database;
exit;

