/*
Case Statement
*/

select FirstName,LastName,Age,
case
	when Age > 30 Then 'Old'
	when Age between 27 and 30 then 'Young' 
	else 'Baby'
end
from EmployeeDemographics
where Age is not null
order by Age

--use case 1) 
select FirstName,LastName,JobTitle,Salary,
case
	when JobTitle = 'Data Analyst' then Salary + (Salary *.10)
	when JobTitle = 'Data Scientist' then Salary +(Salary * .5)
	when JobTitle = 'HR' then Salary + (Salary * .000001) 
	else Salary + (Salary * .03)
end As SalaryAfterRaise
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID