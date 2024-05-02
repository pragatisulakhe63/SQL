/*
Select Statement
*,Top,distinct,Count,Max,Min,Avg
*/

select Top 5 * 
from EmployeeDemographics

select distinct (Gender) from EmployeeDemographics

select COUNT(LastName) from EmployeeDemographics

select COUNT(LastName) As LastNameCount from EmployeeDemographics

select * from EmployeeSalary

select MAX(Salary) from EmployeeSalary
select MIN(Salary) from EmployeeSalary
select AVG(Salary) from EmployeeSalary