-- subqueries in SQL 
create database saicharan;
use saicharan;
create table sai(
id int,
name varchar(60),
age int,
marks decimal(10,2),
gender varchar(6)
);
insert into sai values(1,"S1",18,95,"M"),(2,'S2',19,90,'M'),(3,'S3',17,84.5,"F"),
(4,"s4",18,75,"M"),(5,'S5',18,55,'M'),(6,'S6',18,69,'M'),(7,'S7',18,79,'F'),
(8,'S8',17,49,'M'),(9,'s9',18,87,'F'),(10,'s10',19,98,'M'),(11,'S11',18,91,'M'),
(12,'S12',18,65,'M'),(13,'S13',19,93,'F'),(14,"S14",18,45,'F'),(15,'S15',18,49,'F'),
(16,'S16',17,70,'F'),(17,'S17',18,65,'F');
-- I want to find no of male students who have more marks than avg marks of female students 
select avg(marks) from sai where gender='F';
SELECT count(*) as no_of_male_students from sai where gender='M' and marks > (select avg(marks) from sai where gender='F');