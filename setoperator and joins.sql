-- string function in sql
use sakila;
show tables;
select * from actor;
select upper("mohit") from dual;
select lower("VAIBHAV") FROM DUAL;
select lower(concat(first_name ,last_name,'@gmail.com')) as total from customer; -- concat in lower case

select concat('ghanshyam ','ojha') from dual;
SELECT * INTO customers_backup FROM customers;

-- revision group by
use world;
show tables;
select * from city;
select * from country;
select count (continent) from country;
select continent from country group by continent;
select continent,count(*) as total_nation from country group by continent;
select continent,count(*),sum(population) from country group by continent having count(*)>40;
-- in group by we have to mention all the filed which is aftrer the group by same as after that select command in sql

-- having is a part of statememnt ,where select is statment 

-- spet 11 set operations & joins
use sakila;
show tables;
desc actor;
desc actor_info;

select first_name from actor limit 3;
select first_name from actor_info limit 3;

-- set operator ( union , intersect , except) 
Select first_name from actor union select first_name from actor_info  order by first_name;

create table xyz(id int);
create table xyz2(id int);
insert into xyz values(10);
insert into xyz values(50);
insert into xyz2 values(90);

-- string should be compartible to the datatypes and "columns are same in both the table " while crating the table
select * from xyz union select * from xyz2; -- union

-- union will merge two tbale data in single table and its removes the duplicate data in sql

select * from xyz intersect select * from xyz2; -- intersect

-- intersect shows the common data in the both table

select * from xyz;
select * from xyz2;
select * from xyz except select * from xyz2; -- except give the data which is not present in second table; -- not written common value

-- joins
-- data are preseneted in multiple table,we make a table from the two table by the use of joins in sql.





