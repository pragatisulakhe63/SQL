/*
Where Statement
=,<>,<,>,And,Or,Like,Null,Not Null,In
*/

select * from EmployeeDemographics
where FirstName = 'Pragati'

select * from EmployeeDemographics
where FirstName <> 'Pragati'

select * from EmployeeDemographics
where Age >= 30

select * from EmployeeDemographics
where Age <= 30

select * from EmployeeDemographics
where Age >= 30 And Gender = 'Male'

select * from EmployeeDemographics
where Age >= 30 or Gender = 'Male'

select * from EmployeeDemographics
where LastName like 'S%al%k%'

select * from EmployeeDemographics
where FirstName is Null

select * from EmployeeDemographics
where FirstName is Not Null

select * from EmployeeDemographics
where FirstName In ('Pragati','Jain')

