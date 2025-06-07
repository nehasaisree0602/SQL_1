-- Corelated Subquery 
-- For Every Row Subquery will execute
create database pallavi;
use pallavi;
create table sai(
id int,
name varchar(60),
age int,
salary bigint,
gender varchar(2)
);
insert into sai values(1,'E1',18,9543,'M'),(2,'E2',19,9054,'M'),(3,'E3',17,8654,'F'),(4,'E4',18,7235,'M'),
(5,'E5',18,12395,'M'),(6,'E6',19,5545,'M'),(7,'E7',18,6569,'F'),(8,'E8',17,7569,'M'),
(9,'E9',18,8877,'F'),(10,'E10',19,2398,'M'),(11,'E11',18,12191,'M'),(12,'E12',18,4565,'M'),
(13,'E13',19,6793,'M'),(14,'E14',18,9845,'F'),(15,'E15',18,9849,'F'),(16,'E16',17,6770,'F'),(17,'E17',18,3665,'F');
-- 15th highest SALARY
SELECT * FROM SAI;
select salary as output
from sai as t1
where 
14=(
select count(*) from sai as t2
where t1.salary<t2.salary);

select * from sai;
-- Salary confidential security purpose we want to specify particular so we can play with data 
-- View 
create view male_data_view as 
select id,name,age from sai where gender='M';
select * from male_data_view;

-- Stored Procedures in SQL langugae
select * from sai;
DELIMITER //
 create procedure sai_procedure()
 begin
 select id,name,age from sai where gender='F' and age< 19 ;
 end //
 DELIMITER ;
  call sai_procedure();
  
  -- Stored procedure with parameters
  DELIMITER //
 create procedure parameter_procedure(
 p_gender varchar(30),
 p_age int)
 begin
 select id,name,age from sai where gender=p_gender and age<p_age ;
 end //
 DELIMITER ;
  call parameter_procedure('M',20);
  
  -- indexes in SQL
select * from sai where salary>8000;

create index salary_index on sai(salary asc);
select * from sai where salary>8000;