create database student;
use student;
create table student_details(
student_id int,
student_age int,
student_name varchar(20),
student_gender char(6),
student_marks decimal(10,2)
);
select * from student_details;
insert into student_details values(1,17,"saicharan","Male",99),(2,18,"Tharun","Male",98),(3,17,"Ankitha","Female",100),(4,17,"mamatha","Female",100),
(5,19,"Leela","Female",35),(6,18,"Ramesh","Male",47),(7,19,"Ram","Male",77),(8,18,"Raghu","Male",87),(9,17,"Suresh","Male",37),
(10,18,"Mahesh","Male",67);
-- I want to get the marks of student whose student_id is 7
/*bkfkskfj*/
select * from student_details where student_id = 7;
-- I want to get the marks of student whose name is THarun
select * from student_details where student_name = 'Tharun';
-- I want to get the marks of student whose age is >18
select * from student_details where student_age >18;
-- I want to get the marks of student whose age is in 17 18 19 
select * from student_details where student_age>=17;
-- I want to get the marks of student whose age is in 17 18 19  with out using >,< symbols
select * from student_details where student_age in(17,18,19);
-- I want to get the marks of student whose name start with a and start with n
select * from student_details where student_name like "%a";
select * from student_details where student_name like "%n";
-- I want to get the marks of student whose gender is male
select * from student_details where student_gender = "Male";
-- I want to get the marks of student whose name start with R
select * from student_details where student_name like "r%";
select * from student_details;
select * from student_details where student_name like "%a%";
select * from student_details where student_name like "%h";
-- Aggregate Functions
select count(*) as total_strength from student_details;
select count(*) as total_strength from student_details where student_age =18;
select avg(student_marks)as avg_marks from student_details where student_age=18; 
select sum(student_marks)as sum_marks from student_details where student_age =17;
select max(student_marks) as max_marks from student_details;
-- We got maximum marks that's fine but what i want was who got that also 
select max(student_marks) as max_marks from student_details where student_age =18;
select avg(student_age) as avg_age from student_details;
select avg(distinct student_age) as avg_age from student_details;

-- Joins
-- Create New database 4 tables 1 table (id name age) 2table(id ,marks,rank),3rd table(id,sports),4th table(id,ncc-nss)
create database ankitha;
use ankitha;
create table student_table(
id int,
name varchar(60),
age int
);
create table marks_table(
id int,
marks int,
student_rank int
);
create table sports_table(
id int,
sport varchar(60)
);
create table ncc_nss_table(
id int,
ncc_nss varchar(5)
);
insert into student_table values(1,"saicharan",17),(2,"Tharun",18),(3,"Ankitha",19),(4,"mamatha",17),
(5,"Leela",19),(6,"Ramesh",18),(7,"Ram",19),(8,"Raghu",17),(9,"Suresh",18),
(10,"Mahesh",17);
insert into marks_table values(1,89,6),(2,95,3),(3,76,9),(4,80,8),(5,69,10),(6,92,4),(7,90,5),(8,82,7),(9,97,2),(10,98,1);
insert into sports_table values(1,"Cricket"),(3,"volleyball"),(5,"Basketball"),(6,"Cricket"),(7,"Volleyball"),(10,"Basketball");
insert into ncc_nss_table values(1,"ncc"),(2,"nss"),(3,"ncc"),(6,"nss"),(8,"nss"),(10,"ncc");

-- inner join
 select * from student_table;
 select * from marks_table;
 
 select * from 
 student_table as t1
 inner join 
 marks_table as t2 
 on
 t1.id=t2.id;
 -- Assignment question 2 why we are getting whole data(Interview question)
 select t1.id,t1.name,t2.marks,t2.student_rank from student_table as t1 inner join marks_table as t2 on t1.id=t2.id;
  select t1.id,t1.name,t1.age,t2.sport from student_table as t1 inner join sports_table as t2 on t1.id=t2.id;
  
  -- left Join
  -- it will extract the common data + left side data(student+nccnss data if i want)
  select * from student_table as t1
  left join 
  ncc_nss_table as t2 on 
  t1.id=t2.id;
  
  -- Right join 
  select * from sports_table as t1 
  right join 
  ncc_nss_table as t2 on t1.id=t2.id;
  
  -- Self join 
  -- I want to know how many people got more marks compared to student 1
SELECT COUNT(*) AS people_with_more_marks
FROM marks_table t1
JOIN marks_table t2 ON t2.marks > t1.marks
WHERE t1.id = 10;
SELECT COUNT(*) AS people_with_more_marks
FROM marks_table t1
JOIN marks_table t2 ON t1.marks > t2.marks
WHERE t1.id = 7;


