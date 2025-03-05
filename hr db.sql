use HR_DB
--1-
select *
from Employees
--2-

select *
from Employees 
where CountryID=1
--3-
select *
from Employees 
where DepartmentID=3

--4-
select *
from Employees 
where MonthlySalary>5000
--5-
select *
from Employees 
where HireDate>'2020-1-1'
--6-
select *
from Employees 
where ExitDate is not NULL
--7-
select *
from Employees 
where BonusPerc > 0.1