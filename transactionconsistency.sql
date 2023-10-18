show databases;
use sakila;
-- a database transaction a logical unit of work which consist onf many operation.
-- transaction take our data from one consistent state to another

-- isolation
use sakila;
desc test;

drop table test;
desc test;
create table test(id int,name varchar(20));
insert into test values(1,"amit"),(20,"abc"),(30,"arpit");
select * from test;
-- auto commit
-- whenever we prefrom any task in sql than it is reflects in datbase.its is in the consistent stage
select @@autocommit;
SET SQL_SAFE_UPDATES = 0;
update test set name = "tushar" where id =20;
select * from test;

set autocommit=0;
update test set name = "anand" where id =30;
select * from test;
-- by defualt autocommit is true

-- start transaction is used for autocommit o its mean its is false 
select @@autocommit;

start transaction;
update test set name="japan" where id=10;
rollback;
select * from test;
select @@autocommit;

create table honey(id int,name varchar(10));
-- transaction ends by rollback command
-- commit is used for saving the transacition into database 

-- ddl is data definition language,which is type of sql,where we work on data and to creaete schema 
-- ?? -- ?? -- ??
-- ddl are autocommit statement which can store the data into database without using commit and the transaction is end
-- 
-- logical unit of work is done

-- lets start with two things

use sakila;
select * from test;
set autocommit=0;
select @@autocommit;

-- ISOLATION

-- savepoint is the break where we have to end our transactrion
select @@autocommit;
SET autocommit =1;

select * from test;
start transaction;

update test set name ="mohit" where id =1;
savepoint test_name;
select * from test;
rollback;

rollback to test_name;

-- isolation level and how to ccreate view with all types
-- indexing types of indexing



-- savepoint is nullify by rollback
