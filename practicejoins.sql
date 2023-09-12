show databases;
use ghanshyam;
show tables;
select * from friends_yo;
desc friends_yo;
insert into friends_yo values('101','ankit','15'),('102','arpit','20'),('103','ayush','25'); -- insert command
select * from friends_yo;
UPdatE friends_yo SET name = 'aniket' where id ='101';


create table friends(id int primary key,birthday varchar(20),name varchar(20) );
create table friendb(id int,age int, foreign key(id) references friends(id));
insert into friends values (1,'24 aug,2016',"ramji");
insert into friends values (2,'14 aug,2014',"ramji1");
insert into friends values (3,'4 aug,2006',"ramji2");
insert into friends values (4,'22 aug,19966',"ramji3");
insert into friends values (5,'2 aug,1955',"ramji4");
select * from friends;
insert into friendb values (1,25);
insert into friendb values (2,16);
insert into friendb values (3,19);
insert into friendb values (4,20);

select * from friends union select * from friendb;

select * from friendb;
select * from friends left join friendb on friends.id=friendb.id; -- left join
select * from friends right join friendb on friends.id=friendb.id; -- right join
select * from friends cross join friendb on friends.id=friendb.id; -- full join
select * from friends inner join friendb on friends.id=friendb.id; -- inner join
select birthday,friendb.age from friends left join friendb on friends.id=friendb.id;
select friends.id,friendb.age from friends left join friendb on friends.id=friendb.id;

-- now we let's use join and group by things
use sakila;
show tables;
select * from actor;
select * from actor_info;
select * from actor union select * from actor_info;

use world;
select country.continent , floor(avg(city.population))
from city join country on
city.countrycode= country.code group by country.continent;






