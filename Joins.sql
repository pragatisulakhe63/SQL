/*
Inner Joins,Full/Left/Right Outer Joins
*/

Select * from EmployeeDemographics
Select * from EmployeeSalary

select * 
from EmployeeDemographics
Inner Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


select * 
from EmployeeDemographics
Full Outer Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select * 
from EmployeeDemographics
Left Outer Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select * 
from EmployeeDemographics
Right Outer Join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select EmployeeDemographics.EmployeeID,FirstName,LastName,JobTitle,Salary
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--//Use Case 1): Highest Paid Salary Employee
select EmployeeDemographics.EmployeeID,FirstName,LastName,Salary
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where FirstName <> 'Yogita'
order by Salary DESC

--Use Case 2):Average Salary of Data Analyst
select JobTitle,AVG(Salary)
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Data Analyst'
Group by JobTitle
