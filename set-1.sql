-- 1. Write a query to get all employee detail from "employees" table 
select *
from employees 

-- 2. Write a query to get only "FirstName" column from "employees" table  
select  FirstName 
from employees

-- 3. Write a query to get FirstName in upper case as "First Name".
select Upper(FirstName) as "First Name" 
from employees 

-- 4. Write a query to get FirstName in lower case as "First Name".
select lower(FirstName) as "First Name"
from employees

-- 5. Write a query for combine FirstName and LastName and display it as "Name" (also 
-- include white space between first name & last name)

-- MYSQL
select concat(FirstName,' ',LastName) as Name 
from employees

-- MS SQL
select FirstName + " " + LastName 
from epmloyees

-- 6 . Select employee detail whose name is "Diane"
select * from employees
where firstName = "Diane"

-- 7. Get all employee detail from employees table whose "FirstName" start with 
-- latter 'a'.
select * 
from employees
where firstName like 'a%'

-- 8. Get all employee details from employees table whose "FirstName" contains 
-- 'n'
select * 
from employees
where firstName like "%n%"

-- 9. Get all employee details from employees table whose "FirstName" end with 
-- 'm'
select * 
from employees 
where firstName like '%m'

-- 10. Get all employee detail from employees table whose "FirstName" start with 
-- any single character between 'a-p'
select * 
from employees
where firstName like '[p-n]%'