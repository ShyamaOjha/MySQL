-- lets know about char and varchar
-- in char memory storage is higher where in varchar it is very good in memory managment
-- maximum character(max value 65,535)

use test;
show tables;
create table ep10(name char(20),age int);
insert into ep10 values("amit",15);
insert into ep10 values("rohit",16);
insert into ep10 values("virtt",10);
select * from ep1;

create table ep2(name char(20));
insert into ep2 values(' a b'); 
select name ,length(name) from ep2;

-- in char datatype it is count the spcaes in between two character and the first character whitesapces.
 -- last whitespaces is not count in the char datatype.

create table ep3(name varchar(20));
insert into ep1 values("a  b");
select * from ep1;

create table ep4(name varchar(3));
insert into ep2 values('a    '); 
select name ,length(name) from ep4;

-- varchar remove the whitespaces in string if the string exceed the limit than it will trim the whitespaces.

create table ep_var1(eid int check(eid>2));
insert into ep_var1 values(10);
insert into ep_var1 values (1);

-- create table ep_var2(gender char(1) ,check gender("M","F"));
-- create table ep5 (age int,gender char(1)),check (age>10 and gender in ('m','f','o');

-- delete (always delete row not column)

show tables;
set sql_safe_updates=0;
delete from ep1;
select * from ep10;
delete from ep10 where age <15;

-- uptade
-- we can use limit with uptade and delete commands.
update ep10 set age=23 where age=16;
delete from ep10 order by age limit 2;
select * from ep10;

-- now we go. to ddl commmands
-- drop is slower when we talking about the deleteing the data and data structure ,
-- we can rollback the process or we can undo which is stored at views location 

-- but by the use of turncate is for deleting the data and data structure and but turncate have demerit 
 -- we can't recover the data and  (transaction and tcl related topics)
 -- turncate don't use the condition while deleting the data 
 -- turncate remove the data but make a new copy of scheme or strucuture of a table.



