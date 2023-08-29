use sakila;
show tables;
select * from actor;
select * from actor where first_name like '%a_' and not actor_id between 10 and 60;
show databases;
use sakila;
show tables;
select * from actor;
select last_name,first_name ,actor_id from actor where first_name like 'e%s';
select film_id,title,release_year,description from film where description like '%drama%' and title like '%c';
create database ghanshyam;
show databases;
use ghanshyam;
select database();
create table friends_yo (id int not null auto_increment,
name varchar(45)not null,
age int not null,primary key(id));
