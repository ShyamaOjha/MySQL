use world;
show tables;
select * from country;
select name,continent from country;
select continent,count(capital),avg(gnp) from country group by continent;
select concat('country = ',countrycocde,'sum of the the capital of the continent = ',count(capital),' averge of gdp of the con = ',AVG(gnp)) from cItY group by continent order by continent;
------------ 
show databases;
use ghanshyam;
show tables;
select * from friends_yo;
alter table friends_yo add city varchar(24);

use sakila;
show tables;
select * from country;
select distinct count(country) from country;

select  count( distinct rating) from film;
select * from payment;
select count(*) from payment;
-- we use count or aggregate function befer ethe distinct

select count(distinct amount) from payment;
select distinct staff_id from payment;
select count(distinct staff_id) from payment;
-- where
select * from film;
select * from film where rating='pg-13' and rental_rate>2.99 and release_year=2000;

-- order by
select * from actor;
select film_id,rental_duration,rental_rate from film order by rental_Rate desc,rental_duration asc;
select first_name ,last_name from actor order by first_name,last_name asc;
select actor_id ,first_name ,last_name from actor order by actor_id desc;

-- limit
select * from payment order by amount desc limit 10;
select * from payment where amount>5 order by amount desc limit 10,15;
-- challlenge question
select * from film;
select * from film where replacement_cost>10 limit 10;
select replacement_cost,rating from film where rating='nc-17' and replacement_cost<5 limit 10;

-- between
select * from payment;
select * from payment where amount between 4 and 7 order by amount desc;
 -- challenge 
 select * from payment;
 select * from payment where payment_date >'2005-04-01'
 and payment_date <'2005-07-15' order by payment_Date desc;
 -- in command
 select * from payment;
 select * from payment where amount in(1.99,2.99);
 select count(amount) from payment where amount in (1.99,2.99);
 
 select * from country where country in('india','afghanistan','china');
 -- challenge 
 select * from film;
 select * from film where rental_duration in (5,6,7) order by title desc;
 select * from film where rental_duration in (5,6,7) and rental_rate in (5,6);
 
 -- challenge
 select * from actor;
 select count(first_name) from actor where first_name like 'm%' and last_name like 'm%';
 
 -- aggregate functions
 select * from film;
 select min(replacement_cost),max(length) from film ;
 select avg(length) from film;
 select sum(replacement_cost) from film;
 
 -- as 
 select sum(rental_Rate) as totalrentalrate from film;
 
 -- group by
 select * from film;
 select rating ,sum(rental_rate) as totalrentalrate from film group by rating order by rating desc;
-- challenge
select * from payment;
select rental_id,sum(amount) as total_rental_id from payment group by rental_id order by rental_id desc;

-- error
