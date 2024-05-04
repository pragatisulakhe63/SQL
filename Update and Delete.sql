/*
 Updating and Delating data
*/

select * from EmployeeDemographics

update EmployeeDemographics
set EmployeeID = 1012
where FirstName = 'Havy' and LastName = 'Tandon'


update EmployeeDemographics
set Age = 31,Gender = 'Female'
where FirstName = 'Havy' and LastName = 'Tandon'

delete from EmployeeDemographics
where EmployeeID = 1005


