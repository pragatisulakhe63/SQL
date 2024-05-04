/* 
String Functions : TRIM,LTRIM,RTRIM,Replace,Substring,Upper,Lower 
*/
drop table if exists Employee_ERR
create table Employee_ERR(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

insert into Employee_ERR values
('1001 ','Pragati','Jain'),
(' 1002','Ishwari','Lokhande'),
('1003','REmo','De - souza')

Select * 
from Employee_ERR

--Using Trim,LTRIM,RTRIM
select EmployeeID, TRIM(EmployeeID) as IDTRIM
from Employee_ERR

select EmployeeID, LTRIM(EmployeeID) as IDLTRIM
from Employee_ERR

select EmployeeID, RTRIM(EmployeeID) as IDRTRIM
from Employee_ERR

--Using Replace
select LastName, REPLACE(LastName,'- souza','') as LastNameReplace
from Employee_ERR

--using substring
select SUBSTRING(FirstName,1,3) 
from Employee_ERR

select err.FirstName,Substring(err.FirstName,1,3 ),dem.FirstName,Substring(dem.FirstName,1,3)
from Employee_ERR err
Join EmployeeDemographics dem
	on Substring(err.FirstName,1,3 )= Substring(dem.FirstName,1,3)

--using upper and lower
select LastName, LOWER(LastName)
from Employee_ERR

select LastName, upper(LastName)
from Employee_ERR