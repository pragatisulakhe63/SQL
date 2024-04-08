update emp
set FirstName = "Vikas",Department = "HR"
where emp_id = 1;

select *
from emp
where Department = "HR"
limit 2;

select min(Salary) as smallestprice,emp_id 
from emp
group by emp_id;

select count(*) from emp;

-- find number employee where salary >100000
select count(*) from emp
where Salary > 100000;

-- How many different salary are there in the employee table:
select count(distinct Salary)
from emp;


update emp
set Salary = 60000 
where emp_id  = 4;
select * from emp;

select sum(Salary)
from emp;

-- To list all records with a higher salary than average, we can use the AVG() function in a sub query:
select * from emp
where Salary >(select Avg(Salary) from emp);
select * from emp;

select Avg(Salary) from emp;

-- Select all employee that starts with the letter "a":
select * from emp
where FirstName like 'a%';

-- Return all employee_ from a Department that starts with 'L';
select * from emp 
where Department like 'I_';

-- Return all employee_ from a DEpartment that contains the letter 'R':
select * from emp where Department like '%R%';

-- Return all employee that starts with 'Ma':
select * from emp
where FirstName like "Ma%";

-- Return all employee that contains the phrase 'or'
select * from emp
where FirstName like "%or%";

-- Return all employee that starts with "a" and are at least 3 characters in length:
select * from emp where FirstName like "M___%";

-- Return all employee that have "k" in the second position:
select *  from emp where FirstName like "__k%";

-- Return all employee starting with either "V", "M", or "P":
select * from emp where FirstName like '[vmp]%';

-- Return all emplyee from 'HR,IT':
select * from emp where Department in ('IT','HR');

-- Return all emplyee NOT from 'HR,IT':
select * from emp where Department not in ('IT','HR');

-- The following SQL statement selects all employee with a salary between 50000 and 100000. In addition, the emp_id must be either 1,2, or 3:
select * from emp
where Salary between 60000 and 300000 
and emp_id in (1,2,3);

-- The following SQL statement selects all emp with a FirstName alphabetically between a and b:
select * from emp 
where FirstName between 'M' and 'h'
order by FirstName;

-- The following SQL statement creates an alias named "employee details" that combine four columns (FirstName, LastName,emp_id,Department):
select emp_id,concat(FirstName,',',LastName,',',Department)as employee_detsils from emp;

-- Refer to the Custom'ers table as Persons instead:
select * from emp as Employee_Details;












select * from emp;
