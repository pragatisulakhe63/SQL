/*
Group by, Order by

*/

select * 
from EmployeeDemographics
order by Age

select Distinct(Gender) from EmployeeDemographics

select Gender,COUNT(Gender) As CountGender
from EmployeeDemographics
where Age<30
Group by Gender
order by CountGender DESC

