CREATE DATABASE 'test.fdb' user 'user1' password 'masterkey';
SET NAMES ASCII;
select rdb$owner_name from rdb$relations where rdb$relation_name = 'RDB$DATABASE';

DROP DATABASE;

