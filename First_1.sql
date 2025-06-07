create database mamatha;
use mamatha;
create table ankitha(
student_id int,
student_name varchar(40),
student_mobile_no bigint,
student_age int,
student_marks decimal(10,2)
);
select * from ankitha ;

alter table ankitha 
add student_class char(15);

alter table ankitha
change column student_class class  varchar(60);

alter table ankitha
drop column class;

insert into ankitha(student_id,student_name,student_mobile_no) values(1,'Charan','9502916469'),(2,'Tharun','9000110360'),
(3,'mamatha','9553416132');

insert into ankitha values(4,'Raghu','9874563210',27,84.50),(5,'kiran','6303463298',26,96.25);

update ankitha 
set student_age =15 where student_age is null;

update ankitha
set student_marks=63 where student_marks=100;
delete from ankitha where student_marks <70;
select * from ankitha;