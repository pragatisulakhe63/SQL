-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- // 
-- //
-- // 						Author :        Pragati Arvind Sulakhe
-- //						Date :          29/03/2024
-- //
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



create database employee_;

use employee_;

create table emp(
	emp_id  int,
    FirstName varchar(10),
    LastName varchar(10),
    Salary int,
    JoiningDate date,
    Department varchar(10),
    Gender varchar(10)
    );

insert into emp(emp_id,FirstName,LastName,Salary,JoiningDate,Department,Gender) values
(1,"Vikas","Ahlavat","60000",(current_date()),"HR","Male"),
(2,"Nikita","Babar","100000",(current_date()),"IT","Female"),
(3,"Vedashri","Patil","120000",(current_date()),"HR","Female"),
(4,"Manish","Jain","150000",(current_date()),"IT","Male"),
(5,"Pragati","Jain","340000",(current_date()),"IT","Female");

-- ////////////////////////////////////////////////////////////////////
-- -- 1. Write a query to get all employee_ detail from "emp" table
-- ///////////////////////////////////////////////////////////////////
select * from emp;

-- //////////////////////////////////////////////////////////////////////
-- -- 2. Write a query to get only "FirstName" column from "emp" table-- 
-- //////////////////////////////////////////////////////////////////////
select FirstName from emp;

-- ///////////////////////////////////////////////////////////////////////
-- -- 3. Write a query to get FirstName in upper case as "First_Name"
-- //////////////////////////////////////////////////////////////////////
select upper(FirstName) as First_Name
from emp;

-- ////////////////////////////////////////////////////////////////////
-- -- 4. Write a query to get FirstName in lower case as "First_Name"
-- ////////////////////////////////////////////////////////////////////
select lower(FirstName) as first_name
from emp;

-- ///////////////////////////////////////////////////////////////////////////////////////
-- -- 5. Write a query for combine FirstName and LastName and display it as "Name" (also
-- -- include white space between first name & last name) 
-- -- Use Concat()
-- //////////////////////////////////////////////////////////////////////////////////////
select concat(FirstName,' ',LastName) 
from emp;

-- /////////////////////////////////////////////////////////////////////////////////////////
-- -- 6. Select employee_ detail whose name is "Vikas"
-- /////////////////////////////////////////////////////////////////////////////////////////
select * from emp
where FirstName = "Vikas";

-- ////////////////////////////////////////////////////////////////////////////////////////////
-- -- 7. Get all employee_ detail from emp table whose "FirstName" start with
-- -- latter 'P'. and LastName start with 'J".
-- ////////////////////////////////////////////////////////////////////////////////////////////
-- -- Note : 1) Like is Operator used in where clause to search specified column
-- 		 --  2) % is uses one, two, more character to display
-- ///////////////////////////////////////////////////////////////////////////////////////////
select * from emp
where FirstName like "P%";

select  * from emp
where LastName like "%J";

-- ////////////////////////////////////////////////////////////////////////////////////////////////
-- -- 8. Get all employee_ details from emp table whose "FirstName" contains
-- -- 'k'
-- ////////////////////////////////////////////////////////////////////////////////////////////////
-- -- Notes : %k% used karatat jevha aplyala ekhadya firstname k he word pahije asel
-- -- for ex : first Name = vikas
-- ///////////////////////////////////////////////////////////////////////////////////////////////
select * from emp
where FirstName like "%k%";

-- //////////////////////////////////////////////////////////////////////////////////////////////////
-- -- 9. Get all employee_ details from emp table whose "FirstName" end with
-- -- 'h'
-- //////////////////////////////////////////////////////////////////////////////////////////////////
select * from emp
where FirstName like "%h";

-- 12). Get all employee_ detail from emp table whose "Gender" end with 'le'
-- and contain 4 letters. The Underscore(_) Wildcard Character represents any single
-- character.
select * from emp
where Gender like '__le';

-- 13). Get all employee detail from emp table whose "FirstName" start with
-- 'V' and contain 5 letters.
select * from emp
where FirstName like 'V____';

-- 14). Get all employee detail from emp table whose "FirstName"
-- containing '%'. ex:-"Vik%as".
select * from emp
where FirstName like '%[%]%';

-- 15). Get all unique "Department" from emp table.
select distinct(Department) from emp;

-- 16). Get the highest "Salary" from emp table
select max(Salary) from emp;

-- 17). Get the lowest "Salary" from emp table.
select min(Salary)  from emp;

-- 18). Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013"
