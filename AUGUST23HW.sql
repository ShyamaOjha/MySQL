use sakila;
show tables;
select * from film;
select * from actor;
select * from actor where actor_id between 2 and 7 and (first_name like 'nick' or first_name like 'ed'); -- answer 1
select * from actor where (last_name not like '%a%' and last_name not like '%e%'); -- answer 2nd 
select * from actor where first_name not in ("matthew","grace","joe") and actor_id between 1 and 15; -- answer 3
select * from actor where (last_name not like '%a%' and last_name not like '%i%') and  actor_id between 1 and 15; -- answer 4