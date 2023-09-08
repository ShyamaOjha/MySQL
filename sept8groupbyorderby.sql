-- ALISA nAME
-- where clause and join can't be use by as
USE SAKILA;
-- alias name - nickname
-- demeirt not use with where ,join ,on clause
show tables;
select first_name , concat("mr",first_name)fullname from actor where fullname;
select first_name, concat("mr",first_name)fullname from actor order by fullname;

-- group by
select first_name ,length(first_name) from actor;

-- multipkle row => output
-- similar => operation
-- group => group operation
-- first we sort the data afer that we use group by
use world;

select * from country;
-- count
create table t1(id int,city varchar(20));
insert into t1 values(1,"hey");
insert into t1 values(2,"hey2");
insert into t1 values(null,"hey");
select * from t1;

select count(*) from t1; -- here its refer to the column which is having not null column.(count both null or not null value)
select count(id) from t1; -- if we use column name in count parameter than its count the not null value.
select sum(id) from t1; -- sum aggegrate function
-- distinct
-- distinct skip not null values,because distinct can't be compare to not null.
select distinct (city) from t1;
select count(distinct city) from t1;

select * from city;
select count(city) from city where countrycode = 'AFG';
select countrycode,count(id) from city group by countrycode;
select countrycode,count(id),sum(population) as total_population from city group by countrycode;
select distinct countrycode from city;
-- you can use group by 
show tables;
select * from country;
select * from city;
-- total population 
select countrycode,count(id),sum(population);
-- concat("Country agf has total count of"
select countrycode,count(id),sum(population) as total_population from city group by countrycode;
select concat(' country ',countrycode,'  has total count of. ',count(name),' sum of total population = ',sum(population))from city group by countrycode;
select countrycode,count(id),sum(population) as total_population from city group by countrycode order by total_population desc; -- order by kisi bhi column pr lga skte hai
select concat('country ',countrycode,' has total count of ',count(name), ' and sum is ', sum(population) >500  ) from city group by countrycode;  


-- we can't use group by and where clause simalutenously.
-- we can use having when we using group function

select country ,count(id),sum(population);

-- having clause basically use on group by function
select continent ,region from country where continent ='europe' group by continent ,region;
