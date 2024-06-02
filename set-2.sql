-- 11). Get all employee detail from employees table whose "FirstName" not start 
-- with any single character between 'a-p'

-- select * 
-- from employees
-- where firstName like '[!P-Y]%'

-- 12). Get all employee detail from employees table whose "Gender" end with 'le' 
-- and contain 4 letters. The Underscore(_) Wildcard Character represents any single 
-- character.

-- select * 
-- from employees
-- where Gender like "__le"

-- 13). Get all employee detail from employees table whose "FirstName" start with 
-- 'M' and contain  6 letters.
-- select * 
-- from employees
-- where firstName like 'M_____'

-- 14). Get all employee detail from employees table whose "FirstName" 
-- containing '%'. ex:-"Mart%n".
-- select *
-- from employees
-- where firstName like '%[%]%' 

-- 15). Get all unique "Department" from employees table.
-- select distinct(Department)
-- from employees

-- 16). Get the highest "Salary" from employees table.
-- select max(Salary)
-- from employees

-- 17). Get the lowest "Salary" from EmployeeDetail table.
-- select min(Salary)
-- from employees

