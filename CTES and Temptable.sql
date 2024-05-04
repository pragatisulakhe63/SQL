/* 
CTEs
*/


with CTE_Employee as (
select FirstName,LastName,Gender,Salary ,
COUNT(Gender) over (partition by Gender) As TotalGender,
AVG(Salary) over (partition by Salary) As AvgSalary
from EmployeeDemographics As Emp
join EmployeeSalary As Sal
	on Emp.EmployeeID = Sal.EmployeeID
where Salary > '45000'
)
select FirstName,AvgSalary from CTE_Employee

/*
Temp Tables
*/
create table #temp_Employee(
EmployeeID int,
JobTitle varchar(50),
Salary int
)

select * 
from #temp_Employee

insert into #temp_Employee values(
'1001','HR','45000'
)

insert into #temp_Employee
select * 
from EmployeeSalary

/* Use Case */
drop table if exists #temp_Employee2
create table #temp_Employee2(
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

insert into #temp_Employee2 
select JobTitle, COUNT(JobTitle),AVG(Age),Avg(Salary)
from EmployeeDemographics As Emp
join EmployeeSalary As Sal
	on Emp.EmployeeID = Sal.EmployeeID
group by JobTitle

select * from #temp_Employee2