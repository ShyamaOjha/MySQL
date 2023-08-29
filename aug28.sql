use sakila;
select * from city where city_id =3 or city_id=4 and country_id=60;
-- in use for including or excluding thing
select fid,title from film_list where fid<7 and (Fid =4 or fid=6);
select fid,title from film_list where fid<7 and not (Fid =4 or fid=6); -- in or and we can't use ! --> not use
-- if we are usnig like operator ,we dont use % in first postion so this will impact on the their time
select * from film_list;
-- sorted data 'order clause by' asc or descendinng
select * from film_list order by category ; -- asc
select * from film_list order by category desc; -- desc
select * from film_list order by 4; -- using number but we should know abut the column
select * from address;
select * from address order by district ; -- empty emtry will came first when we use the order by command
select district,address,address_id from address order by district, address_id;
-- so if want to descemding the data we have to use suffix the entry like address desc 
select * from address limit 10; -- limit
select * from address order by district; -- dome after class
select * from address limit 10,5; -- here 10 is offset and after using comma,it will give the next 5 entries by this co.
select * from address limit 10 offset 3; -- if we using offset keyword than it will skip the number came 
-- after offset after that it wil will give 10 entries;

select 2+2 ; -- simple
select 2+2 from dual; -- here it dual refers to dummy table which is having one row and one column.alter;
select now() from dual;
-- pseduo colunmn = column == specific meaning
-- already avaialbe with your system;
 