use sakila;
create table empl1(id int primary key auto_increment,dept varchar(20),salary int );
insert into empl1(dept,salary) values ("hr",200),("hr",300),("hr",100),("market",200),("market",100),("market",50),("market",70),
("dsa",70),("dsa",90),("dsa",80),("dsa",20),("dsa",50);
select * from empl1;

select avg(salary) from empl1;
select dept,avg(salary) from empl1 group by dept;

-- window : aggregate
-- the result which is give to every row of a table
-- when we have to result of each and every row 

select id,dept,salary from empl1;
-- over function

select id,dept,salary ,avg(salary) over() from empl1;
select id,dept,salary ,avg(salary) over() as assalary from empl1;

select id,dept,salary ,avg(salary) over(),max(salary) over() from empl1;
-- over() - no window function
-- over(paramter) - 

select id,dept,salary ,avg(salary) over(order by salary) from empl1; -- normal sort
select id,dept,salary ,avg(salary) over(partition by dept) from empl1;


select id,dept,salary ,sum(salary) over(order by salary) from empl1;
select id,dept,salary ,avg(salary) over(order by salary) from empl1;

select id,dept,salary ,sum(salary) over (order by salary) as rollingsum,
sum(salary) over (partition by dept) as partitonsum from empl1;

select id,dept,salary ,sum(salary) over (partition by dept) as rollingsum,
sum(salary) over (partition by dept order by salary) as rollingsum from empl1;

select id,dept,salary ,avg(salary) over (partition by dept) as rollingsum,
avg(salary) over () as compavg from empl1;

select id,dept,salary ,max(salary) over (partition by dept) as rollingsum,max(salary) over () as compavg from empl1;


select id,dept,salary ,min(salary) over (partition by dept) as rollingsum,min(salary) over () as compavg from empl1;

-- rank
select id,dept,salary,rank() over (order by salary) from empl1;

-- denserank
select id,dept,salary,rank() over (partition by dept order by salary) as rankss,
dense_rank() over (partition by dept order by salary) as denranks from empl1;





