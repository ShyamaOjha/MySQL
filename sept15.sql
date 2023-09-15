-- joins
use sakila;
show tables;
desc actor;
desc actor_info;
select * from film_actor;
select * from actor;


select actor.actor_id,first_name,film_id from actor inner join actor_info ;

-- method are given below by how we can queried in joins .
select actor.actor_id,first_name,film_id from actor inner join film_actor;
select actor.actor_id,first_name,film_id from actor inner join film_actor using(actor_id);

create table student(id int ,name varchar(20));
insert into student values(1,"arpit");
insert into student values(2,"arpit2");
insert into student values(4,"arpit4");

create table stuhoby(id int ,hobby varchar(20));
insert into stuhoby values(1,"cricket");
insert into stuhoby values(2,"badminton");
insert into stuhoby values(3,"football");

-- using method is be use when we deal with the common column
select count(*) as totalcount  from student join stuhoby;
select student.id,name,hobby from student inner join stuhoby using(id);

-- using where method 
select student.id,name,hobby from student,stuhoby where student.id=stuhoby.id;

-- 
select student.id,name,hobby from student inner join stuhoby on student.id=stuhoby.id;
-- -- -- -- -- -- -- -- - -- -- --- ----- ---- -- ----

-- left join
select student.id,name,hobby from student left join stuhoby on student.id=stuhoby.id;

-- right join
select student.id,name,hobby from student right join stuhoby on student.id=stuhoby.id;

-- full join (does not support in sql)
-- If we want to do,than we have to first do left join and right join after that we use union operator for full outer join

select actor.actor_id,first_name,film_id from actor as ac inner join film_actor as fac on ac.actor_id=fac.actor_id ; -- check

select * from actor;
select actor.actor_id ,first_name,last_name from actor inner join film_actor using(actor_id);

select actor.actor_id ,first_name,last_name from actor inner join film_actor using(actor_id);




