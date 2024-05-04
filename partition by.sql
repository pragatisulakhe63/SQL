/* 
partition by
*/

select FirstName,LastName,Gender,Salary ,
COUNT(Gender) over (partition by Gender) As TotalGender
from EmployeeDemographics As Demo
join EmployeeSalary As Sal
	on Demo.EmployeeID = Sal.EmployeeID
