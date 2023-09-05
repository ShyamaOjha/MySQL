use sakila;
select * from language;
insert into language values(null,'russian',now()); -- for new entry in language table
insert into language values(10,'russian',now()); -- for new entry by 
-- ignore command will use for giving the warning . (primarlu work on primary key)
insert ignore language values(16,'caribeaian',now());
insert ignore language values(16,'caribeaian',now()); -- its just give warning not error
insert into language(name,last_uptade) values('indian_hindi',now()); -- check
desc language;

-- multiple
insert into language values(null,'pakisiani',now()),(null,'russian2',now()),(null,'arbian',now()); -- for new entry in language table
insert into language set name="abc";  -- rarely used 
 --  --  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
create database if not exists ghanshyam;
create database if not exists test;use test ; -- creating a databse test and using is intitaed
show tables;
select * from employee;
create table employee1 ( eid int(10) ,ename varchar(40),email char(20));
insert into employee values(1,'ankit','ankit012@gmail.com');
insert into employee values(1,'aniket','aniket012@gmail.com');
insert into employee values(1,'aniket',null);
select * from employee;
use test;
create table company ( eid int default 0 ,ename varchar(40),address varchar(40) default null);
insert into company values(null,'ankit',null);
insert into company values(1,'ankit','jaipur');
insert into company values(2,'arpit','udaipur');
insert into company values(3,'shohbt','jodhpur');
insert into company values(1,'rohit','jaipur');
select * from company;
alter table company add Date int;
alter table company modify Date datetime;
select * from company;
insert into company values(1,'rohit','jaipur',now());
delete from company where eid =1;

                        
  