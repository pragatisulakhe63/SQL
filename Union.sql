/* 
Union,Union All
*/

insert into EmployeeDemographics values
(1011,'Janvi','Kapoor',28,'Female'),
(NULL,'Havy','Tandon',NULL,NULL),
(1013,'Harry','Jonson',NULL,'Male')

create table WareHouseEmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

insert into WareHouseEmployeeDemographics values
(1013,'Harry','Jonson',NULL,'Male'),
(1050,'Rohit','Sharma',38,'Male'),
(1051,'Hina','Khan',40,'Female'),
(1052,'Rita','Roy',31,'Female')

select * from EmployeeDemographics

select * from WareHouseEmployeeDemographics

--select * from EmployeeDemographics
--full outer join WareHouseEmployeeDemographics
--on EmployeeDemographics.EmployeeID  = WareHouseEmployeeDemographics.EmployeeID

select * 
from EmployeeDemographics
Union
select *
from WareHouseEmployeeDemographics


select * 
from EmployeeDemographics
Union All
select *
from WareHouseEmployeeDemographics

select EmployeeID,FirstName,Age
from EmployeeDemographics
Union
select EmployeeID,JobTitle,Salary
from EmployeeSalary
order by EmployeeID