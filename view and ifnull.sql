-- view 

use sakila;
select * from actor;

select actor_id,first_name from actor;

-- virtual view
create view actor_view as select actor_id,first_name from actor;
select * from actor_view;

create table test(id int,name varchar(20));
insert into test values(1,"amit"),(2,"aman"),(3,"arpit");
select * from test;

-- view 
-- create view view_name
create view testview as select name from test;
select * from testview;

-- view never store itself ,it stores the data from other table it is just virtual table,it picks the data from the already table 
-- insert
insert into test values(5,"deepak"),(6,"anshumaan");
select * from testview;
-- so here it is understood that if you are manipulate the data in any of table which or original tbale or view table.alter
-- both table shows the changes.

-- alter and view
create view testview as select id,name from test; -- give error
create or replace view testview as select id,name from test;
select * from testview;

alter view testview as select name from test where id>2;
select * from testview;

-- for dropping the view
drop view testview;
show tables;
-- ----------------- ------------- - ------------
select * from country;
select * from city;

create view cityfinder_v as select country_id,country,city_id,city from country join city;
-- if we are using join in view than we cannot insert new values in view table
-- insert the new value ,aggregate,group by,having,subquery 

select * from test;
select count(*) from test; -- 5
select count(name) from test; -- 5

-- IFNull 
SELECT ID ,IFNULL(ID,0)from test;
 -- null value is use for put the value inside in the null values
 
 -- coalesce 
 alter table test add column salary int;
 insert into test values (4,null,100),(null,null,200),(200,null,null);
 select * from test;
 
 -- customerid,customername,movieid 
 -- relationship establish
 -- get all customersid who watched the movie or not
























