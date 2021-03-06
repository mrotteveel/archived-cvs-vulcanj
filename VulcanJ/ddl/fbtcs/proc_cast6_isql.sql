create database 'test.fdb'; 
set term go;
create procedure cast1(a decimal(5,2)) RETURNS (b smallint) as
begin
    b = a/2;
    SUSPEND;
end
go
create procedure cast2(a decimal(5,2)) RETURNS (b integer) as
begin
    b = a * 100;
    SUSPEND;
end
go
create procedure cast3(a decimal(5,2)) RETURNS (b float) as
begin
    b = a * 100;
    SUSPEND;
end
go
create procedure cast4(a decimal(5,2)) RETURNS (b double precision) as
begin
    b = a * 100;
    SUSPEND;
end
go
create procedure cast5(a decimal(5,2)) RETURNS (b decimal(5,2)) as
begin
    b = a * 100;
    SUSPEND;
end
go
create procedure cast6(a decimal(10,0)) RETURNS (b date) as
begin
    b = a;
    SUSPEND;
end
go
create procedure cast7(a decimal(5,2)) RETURNS (b numeric(5,2)) as
begin
    b = a;
    SUSPEND;
end
go
create procedure cast8(a decimal(5,2)) RETURNS (b char(10)) as
begin
    b = a;
    SUSPEND;
end
go
create procedure cast9(a decimal(5,2)) RETURNS (b varchar(10)) as
 begin
   b = a;
   SUSPEND;
 end
go

commit
go
set term ; go
execute procedure cast1 100.98;
execute procedure cast2 100.98;
execute procedure cast3 100.98;
execute procedure cast4 100.98;
execute procedure cast5 100.98;
execute procedure cast6 100.98;
execute procedure cast7 100.98;
execute procedure cast8 100.98;
execute procedure cast9 100.98;

drop database;
