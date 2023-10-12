use sakila;
show tables;

-- 1) How many movies a user has worked Actor and film_actor table 
-- Number of movies should me more than 3
select * from film; select * from actor;
select * from film_actor;
select actor.actor_id,first_name,count(film_id) from actor join film_actor on (actor.actor_id=film_Actor.actor_id) group by actor_id;
select actor.actor_id,first_name,count(film_id) from actor join film_actor on (actor.actor_id=film_Actor.actor_id) group by actor_id having count(film_id)>3 order by (film_id);

-- 2) Get all the information of user with the maximum and minium salary (id , name, email, salary)
use employees; show tables;
select * from employees;
select * from salaries;
select * from employees join salaries using(emp_no) where 
salary=(select max(salary) from salaries) or salary=(select min(salary) from salaries);


select employees.emp_no,concat('first_name' 'last_name'),max(salary),min(salary) from employees,salaries 
where employees.emp_no=salaries.emp_no group by salary;

-- 3) Calculating the total population where the total population should be more
-- than 1000  and there should be more than 2 city in each code
use world;
show tables;
select countrycode,count(countrycode),sum(population) from city group by countrycode
having sum(population)>1000 and count(countrycode)>2;


-- 4)Finding all the countrycode where the number of city in each country should be greater than equal all the
-- city present in the country code  (in afg nld are bgd
use world;
show tables;
select * from city;

select count(name),countrycode from city group by countrycode having count(name)
>=all(select count(name) countednames from city group by countrycode );
select countrycode,name from city where count(countrycode)>all(select * from city) group by countrycode;

-- 5)Q5 Create a table with  id, name, salary, dept insert all the data for all the column value
show tables;
use employees;
DROP TABLE ASSIGN;
create table assign(id int,name varchar(20),salary int,dept varchar(10));
insert into assign values(1,'nishcal',40000,'HR'),(2,'Sushil',600000,'Ceo'),(3,'Anshuman',50000,'marketing'),(4,'deepak',90000,'lawyer');
insert into assign value (5,'uday',40000,'vasoolib'),(6,'vishwajeet',40000,'TL'),(7,'Shyama',50000,'HR');

select id,name,salary,concat(round(salary/(select salary from assign where id=2)*100,0),'%') as salarypercentage from assign;

-- 6) Q6 use salaries table find out the the max, sum, avg salary for each person in every month  from the from_date column
-- that should have the to_date year to be before 1999
use employees;
show tables;
select * from salaries;
select max(salary),sum(salary),avg(salary) from salaries;
select (select max(salary)from salaries) as maxsalary,sum(salary) from salaries,

