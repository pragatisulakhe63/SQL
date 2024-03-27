create database healthcare;

use healthcare;


create table healthcare2(
	p_Id int,
	p_Name varchar(10),
	p_age int,
    hospital_Name varchar(20),
    surgery varchar(20),
    country_Name varchar(20)
    
);

insert into healthcare2 values(124,"Mukesh",30,"Tata","Brain","Mumbai"),
(1242,"Rakesh",40,"Asirvad","Heart","Pune"),
(1134,"Lokesh",20,"Multispecial","stomach","Jalgaon"),
(1324,"Jony",45,"Tata","Liver","Nagpur");

update healthcare2 Set p_Name ="Moni" where p_Name = "Mukesh"; 
delete from healthcare1 where p_Id  = 1242;


alter table healthcare2
add year varchar(10);

alter table healthcare2 
drop column year;
alter table healthcare2 modify column p_Name varchar(50);
alter table healthcare2 rename column hospital_Name to Hospital;
alter table healthcare3 rename to healthcare;

describe healthcare;

-- truncate query used to delete all records
truncate table healthcare;

-- Show tables Records
select * from healthcare;

