-- corerealted query

show databases;
use sakila;
show tables;
select inventory.film_id ,count(*) from inventory,film where inventory.film_id=film.film_id group by film_id;
select count(*) from film;


select count(*) from film where exists 
(select count(*) from inventory,film where inventory.film_id=film.film_id );

select count(*) from film where not exists 
(select count(*) from inventory,film where inventory.film_id=film.film_id );

show databases;

-- if we are using from for correalted query than we should alias 
use employees;
select * from(
select emp_no,year(birth_Date) from employees) as xyz;

use sakila;
select amount ,film_id from payment join rental using (rental_id) 
join inventory using (inventory_id) join film using (film_id);

select * from (select sum(amount) ,film_id from payment join rental using (rental_id) 
join inventory using (inventory_id) join film using (film_id) group by film_id) as xyz1;

select sum(total_Amt) from (select sum(amount) as total_Amt ,film_id from payment join rental using (rental_id) 
join inventory using (inventory_id) join film using (film_id) group by film_id) as xyz1;

--
select avg(total_Amt) from (select sum(amount) as total_Amt ,film_id from payment join rental using (rental_id) 
join inventory using (inventory_id) join film using (film_id) group by film_id) as xyz1;

select max(total_Amt) from (select sum(amount) as total_Amt ,film_id from payment join rental using (rental_id) 
join inventory using (inventory_id) join film using (film_id) group by film_id) as xyz1;

select min(total_Amt) from (select sum(amount) as total_Amt ,film_id from payment join rental using (rental_id) 
join inventory using (inventory_id) join film using (film_id) group by film_id) as xyz1;

-- case

select payment_id,rental_id,amount from payment ;
select 
case rental_id
when rental_id=76 then "xyz"
end "new",payment_id,amount from payment;

select 
case
when rental_id=76 then rental_id + 10
when rental_id>=1000 then rental_id + 100
else rental_id
end "newcol",rental_id,payment_id,amount from payment;

-- (type casting )-  --  - floor ceilin round )
select floor(1213.32) from dual;
select ceiling(1213.52) from dual;
select round(1213.32) from dual;
select round(1213.32,1) from dual;

select round(1213.367,2) from dual;

select round(195.234,-1) from dual;
select round(145.234,-2) from dual;
select round(145.234,-3) from dual;
select round(545.234,-3) from dual;

select mod(7,2) from dual;
select mod(6,2) from dual;
select mod(7123,34) from dual;
select mod(6231312,2132) from dual;

-- turncate will change the digit which is you spicfy
select truncate(234.324,1) from dual;
select truncate(234.324,2) from dual;
select truncate(234.324,-1) from dual;


-- assignment
-- -- get employee no first name and full name of every person where birth year is greater than 
-- birth year of emp id 10003
-- and 
-- where the hire year of emp id < 10005

-- get the info of the user where the gire year is greater than among all the hire year of emp of 10003 to 10007

-- find out the emp no department no dept name of those users who has work in my company for more than 28 years

-- find ouyt the emp no department and name of employee and the next working monday from the date column

-- find out the emp name emp no deparntment no department name and the year total no of month he has worked into
-- youe company only for those users where the total no of months of working is greater than 33 400
-- make a foreign key of a table for making a relationship between another table





































