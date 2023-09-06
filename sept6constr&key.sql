show databases;
use test;
create table student( id int,name varchar(40),age int);
alter table student add email varchar(30);
insert into student values(101,"ankit",20,"arpit@gmial.com");
create table student2( id int,name char(20) default "heya");
insert into student2 values(101);
insert into student2 ()values(102);
select * from student2;

----------------
create table student3( id int not null default 0,name char(20) default "regeixan");
insert into student3(name) values ("arpit@");
insert into student3(id,name) values(null,"user@");
select * from student3;
-------------
create table stdunique( id int unique default 0,email char(20) default "@gmail.com");
insert into stdunique values(2,"ussaer@");
-- null data than we are doing some task than we know that data will be listed as null.
-- default will be excuted at once ,not more than 1,
insert into stdunique(email)values ("arpit");
insert into stdunique(email)values ("mohit");   -- Duplicate entry '0' for key 'stdunique.id'

show tables; 
drop table employee;
-- lets we start with primary key
create table employe(eid int primary key,ename varchar(20));
insert into employe values (1,"arpit");
insert into employe values (2,"arpit");
insert into employe values (1,"arpit"); -- Duplicate entry '1' for key 'employe'

select * from employe;
insert into employe values(null,"moihg"); -- Column 'eid' cannot be null

-- lets start with datatype
-- int 
drop table ex1;
create table ex1(eid int(1) zerofill); --  The ZEROFILL attribute is deprecated and will be removed in a future release. Use the LPAD function to zero-pad numbers, or store the formatted numbers in a CHAR column. 1681 Integer display width is deprecated and will be removed in a future release.	0.0073 sec


create table ex2(eid int unsigned);
insert into ex2 values(42);
insert into ex2 values(-42); -- out of range error

-- every interally things which is going in int size is came in big int,hwhere big int having limit.
-- basically boolean datatype is stored in tinyint

create table test_bool(i bool);
insert into test_bool values(true),(false);
select * from test_bool;
insert into test_bool values(21),(43),(-126);





