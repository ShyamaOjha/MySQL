use sakila;
show tables;
select * from ACTOR where first_name="NICK" or actor_id=3;
SELECT * FROM ACTOR_INFO WHERE FILM_INFO LIKE 'ANIMATION%' and first_name='goldie';
SELECT * FROM ACTOR_INFO WHERE film_info like "animation%" and first_name ="goldie" or first_name="nick";
select cateogry ,rating,title from film_list where category like 'sci-fi' and rating like 'pg';
select category ,rating,title from film_list where (category like 'sci-fi' or category like 'family')and rating like 'pg'; -- parantheis is use for condiotno check
select * from actor where actor_id between 2 and 5; -- betweeen use (inclusive data from it will begin and end point) alwyas smllaer will be assign and after large value is put
select * from actor where first_name between "b" and "d";
select * from actor where actor_id not in (1,2,56,6); -- in command is used for optimization of statment in mysq


 