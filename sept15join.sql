use sakila;
show tables;

desc inventory;
select film.film_id,title from film;
select film_id,last_update from inventory;
select * from inventory;

select title,inventory.film_id,inventory.last_update from film inner join inventory using(inventory_id);

-- inner join rental using (inventory id)
select title,rental_id from film inner join inventory using(film_id) inner join rental using(inventory_id) group by title;

-- group by
select title,count(rental_id) from film inner join inventory using(film_id) inner join rental using(inventory_id) group by title;

-- groupy by alias and having use
select title,count(rental_id) as totalcount from film inner join inventory using(film_id) inner join rental using(inventory_id) group by title having totalcount>15 order by totalcount desc;

-- alias,aggregate function,joim,group by,order by ,limit
select title,count(rental_id) as totalcount from film inner join inventory using(film_id) inner join rental using(inventory_id) 
group by title having totalcount>15 order by totalcount desc limit 5;

select customer.customer_id,rental.rental_id,customer.email from customer as cust inner join rental using(customer_id)
inner join inventory as inv using(film_id);

drop table employee2;
create table employee2(eid int,enmame varchar(20) ,email varchar(20),manager_id int);

insert into employee2 values(1,'tushar','tushar102@gmail.com',null);
insert into employee2 values(2,'gopal','gopal102@gmail.com',1);
insert into employee2 values(3,'aman','aman102@gmail.com',4);
insert into employee2 values(4,'raman','raman102@gmail.com',3);

select * from employee2;

-- nested querires

select rental_duration from film where film_id=1;
select film_id,rental_duration from film where rental_duration=6;

-- single result query
select film_id,rental_duration from film where rental_duration=(select rental_duration from film where film_id=1);




-- error which i have to work
-- 10:25:34	select title,rental_id from film inner join inventory using(film_id) inner join rental using(inventory_id) group by title LIMIT 0, 1000	Error Code: 1055. Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'sakila.rental.rental_id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by	0.00065 sec
