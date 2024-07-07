-- Q1. REtrive employees whose names start with the letter 'A'
select * 
from employee
where name like 'A%';

-- Q2 : Retrive employees with a salary higher than 60000
select *
from employee
where salary >60000;

-- Q3 : Retrive employees from the IT or MArketing Department
select *
from employee
where Department in ('IT' or 'Marketing');


-- Q4 : Retrive names and salaries of the top 5 employees in the finance Department
select names,salaries
from employee
where Department = 'Finance'
order by salaries desc 
limit 5;

-- Q5 : Retrive employees with a salary between 45000 and 55000
select *
from employee
where salary between 45000 and 55000;

-- Q6 : Count the number of distinct department in the Employees Table

select count(distinct department)
from employee;

-- Q7 : Calculate the average salary of employees in the HR Department
select avg(salary) 
from employee
where Department = 'HR';

-- Q8 : Concatenate the name and department columns and rename the result the as EmployeeInfo
select concat(Name,' ',Department) as EmployeeInfo
from employee;

-- Q9 Retrive names of employees along with the length of their names
select name,length(names)
from employee;

-- Q10 : Retrive the first three characters of the names of all employees
select substring(names,1,3)
from employee;


