-- integer
-- float,double,decimal
-- double total precision

show databases;
use employees;
select * from xyz;
create table xyz(price double(5,2));
insert into xyz values(15.2);
insert into xyz values(15.24);
insert into xyz values(15.242);
insert into xyz values(153.2);
insert into xyz values(1532.2); -- error Out of range value for column 'price' .

drop table xyz;
create table xyz(price1 float ,price double);
insert into xyz values(15.2,12.3243);
insert into xyz values(1.232321,12.3323243);
insert into xyz values(1.12123122,12.3123243);
insert into xyz values(15.122,12.324324533);

select * from xyz;
-- if we going to precise and specific value than we should go with double  
-- otherwise we generally go with the float values

create table xyz1(birthdate date);
insert into xyz1 values('2023-01-01');
insert into xyz1 values(curdate());
select birthdate,date_add(birthdate, interval 5 day) from xyz;
select * from xyz1;

create table xyz2(birthdate date,birthtime time);
insert into xyz2 values('2023-01-01','12:09:21');
insert into xyz2 values(curdate(),curtime());
select * from xyz2;

create table xyz3(birthdate datetime);
insert into xyz3 values(now());
insert into xyz3 values('2023-01-01 12:09:21');
select concat(year('2023-01-01')," ",monthname('2023-01-01')," ",date('2023-01-01')," ",week('2023-01-01')) as extractpart from dual;
select dateformat(("2023-01-01"),'%y') from dual;



select * from xyz3;

SELECT LAST_DAY('2003-02-05') from dual;
SELECT DATEDIFF('2023-04-31 23:59:59','2023-12-07') from dual;
SELECT DATEDIFF('2023-12-07 23:59:59','2023-04-1') from dual;
SELECT DATEDIFF(now(),'2023-04-1') from dual;

-- Is there need of using timestamp method in sql


-- 1970 to 2038 values can be stored by the timestamp (its is the range )
-- There are a few reasons why you might want to use a timestamp instead of a date and time in SQL:

-- Performance:
--  Timestamps are often faster to store and retrieve than date and time values.
--  This is because timestamps are stored as a single 4-byte integer, while date and time values are stored as an 8-byte value.
-- Storage space:
--  If you have a large number of date and time values to store in your database, 
-- using timestamps can save you significant storage space.
-- Timezone support: 
-- Timestamps can store timezone information, while date and time values cannot. 
-- This means that if you need to store date and time values with timezone information, timestamps are the only option.
-- Automatic updates: 
-- Timestamps can be automatically updated when a row is created or updated.
--  This can be useful for tracking changes to data over time.
-- Here are some examples of when you might want to use a timestamp in SQL:

-- To track the creation and update dates of rows in a table.
-- To store the time at which an event occurred, such as a login attempt or a purchase.
-- To implement a caching mechanism, where you need to know when data was last updated.
-- To generate unique identifiers for rows in a table, such as order numbers or transaction IDs.

create table timerelated(text varchar(150),created_at timestamp default now(),updated_at timestamp on update now());
insert into timerelated(text,created_at)values('hey',now());


-- to study alter command and foriegn key ,alter ,transaction,transaction control languagge




