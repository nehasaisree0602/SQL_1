create database university;
use university;
create table student(
id int auto_increment,
name varchar(30),
gmail varchar(30),
primary key(id)
);
create table certificate(
id int,
year int,
sem int,
primary key(id)
);
insert into student(name,gmail) values('charan','charan@gmail.com'),('mamatha','mamatha@gmail.com'),('Tharun','tharun@gmail.com'),
('Ankitha','Ankitha@gmail.com');
insert into certificate values(101,1,1),(102,1,2),(103,2,1),(104,2,2),(105,3,1),(106,3,2),(107,4,1),(108,4,2);

select * from student;
select * from certificate;

create table certificate_log(
student_id int,
certificate_id int,
received_date date,
foreign key(student_id) references student(id),
foreign key(certificate_id) references certificate(id)
);

insert into certificate_log values(1,101,'2025-05-25'),(1,102,'2025-05-25');
select * from certificate_log;
insert into certificate_log values(5,101,'2025-05-25');



create table charan(
id int,
name varchar(60) not null,
gmail varchar(60) not null,
age int ,
primary key(id),
unique(gmail),
check(age>12)
);

insert into charan values(1,'Dinesh','Diesh@gmail.com',26),(2,'Vamsi','vamsi@gmail.com',25);
select * from charan;
insert into charan values(4,'Deepak','Deepak@gmail.com',13);