create database sujith;
use sujith;
create table student(
id int,
name varchar(60),
age int,
marks int,
sports varchar(60)
);
select * from student;
insert into student values(1,"charan",17,89,"cricket"),(2,"Tharun",18,78,'Football'),(3,"Kiran",18,90,"Basketball"),
(4,"suresh",17,90,"Cricket"),(5,"Ramesh",19,56,"Basketball"),(6,"Sam",18,79,"Basketball"),(7,"Shreya",17,45,"Cricket"),
(8,"Raj",18,90,"Cricket"),(9,"Vamsi",18,65,"Football"),(10,"Venu",17,97,"Cricket");
-- order by
select name ,age ,marks from student order by marks asc;
select name ,age ,marks from student order by marks asc, age desc, name ;
-- Group by 
select * from student group by sports;
select sports from student group by sports;
select sports,count(name) as no_of_student from student group by sports;
select sports,count(name),avg(marks) from student group by sports;
select sports ,age from student group by sports,age;

-- Having 
Select sports, count(name),avg(marks) from student group by sports having count(name)>=3 and 
avg(marks)>80;

-- Rank 
select name ,marks,rank() over (order by marks desc) from student;
-- ROw rank 
DESCRIBE student;
SELECT 
  name, 
  marks,
  RANK() OVER (ORDER BY marks DESC) AS `rank`,
  DENSE_RANK() OVER (ORDER BY marks DESC) as DR ,
  ROW_NUMBER() OVER (ORDER BY marks DESC)as RR
FROM student;

-- Union 
select * from student where sports='football' union 
select * from student where sports='cricket';

































































