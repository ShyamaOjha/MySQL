-- char length give the size of character in words
-- where characterlength 
use sakila;
select length ('ghanshyam');
select char_length ('ghanshyam');
select concat("h","-","y") from dual;
select concat("h","-",1) from dual;
select concat_ws("-","h","y","g") from dual;  -- concat_ws(seprator,str1,str2)
select upper("hi");
select substr("ghanshyam",2); -- substring function
select substr("ghanshyam",-5);
select substr("ghanshyam",0);-- no response
select substr("ghanshyam",2,7);
-- nested function
select substr(substr("ghanshyam",2,7),-2);
-- instr method 
select instr("ghanshyam",'sh'); -- indexing of particular char ..... and  otherwise 0
-- locate function
select locate('l',"hello");
select locate('a','ghanshyam',4);
-- left trim
select ltrim ("   ghanshyam"); -- delete the white spcaes frrom left side
select rtrim("ghanshyam   ");
select trim("   xyz  ");
select trim(leading" "from"  xyz ");
select length(trim(leading" "from"  xyz "));
select trim(trailing" "from"  xyz ");
select trim(both " "from "   xyzsdf   ");
select trim(both "z" from "zzzzz yz " ); -- (trim from both side but conditon is that white spave is not there)     study more
 -- for read like function rpad lpad
 select lpad ("hello",6,"#");
  select lpad ("hellooo1",6,"#");
  select rpad("hello",6,"#");
  select rpad("hell",6,"#");
   select rpad("hellooo1",6,"#");
select replace("ghanshyam","a","&"); -- (string,'want to change','changed by this char'). floor and ceiling
select now(); -- date and time


 ----------------------------
use sakila;
  select * from language;
  desc language;
  select count(*) from language; -- for count of data inserted in table
  
  -- crud create retirve uptade delete
 -- primary key values cant be null
insert into language values(NULL,'AMERICAN',NOW());
SELECT * FROM LANGUAGE;
DELETE FROM LANGUAGE WHERE language_ID=2;
  


