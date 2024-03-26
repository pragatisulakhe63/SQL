--  to create database
create database cda_first;
create database employee;
create database student;

-- delete Database
drop database student;

-- Show All databases
show databases;

-- To UseDatabase
use student;

-- --table create
create table stud_details1(
  SRollNo int,
  Sname char(10),
  SCity char(10),
  SContact int
);
-- insert record in table
insert into stud_details1
(SRollNo,Sname,SCity,SContact)
values(12,"Pragati","Bhusawal",12345685),
(13,"Vaishnavi","Jalgaon",1478595),
(14,"Puja","Nagar",61478595),
(15,"Manish","Jalgaon",6788595),
(16,"ishu","Jalgaon",1878595);


-- select record from table
select * from stud_details;

show tables;