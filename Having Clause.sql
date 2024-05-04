/* 
 Having Clause : The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
*/

select JobTitle,COUNT(JobTitle)
from EmployeeDemographics
join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group by JobTitle
having COUNT(JobTitle) >1 

select JobTitle,AVG(Salary)
from EmployeeDemographics
join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group by JobTitle
having Avg(Salary) > 45000
Order by AVG(Salary)
