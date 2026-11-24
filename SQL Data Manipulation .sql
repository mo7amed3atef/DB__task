-- Select all columns from the "Employees" table.
select * 
from Employees;


-- Select only the "Name" and "Salary" columns from the "Employees" table.
select [Name], Salary
from Employees;


-- Select distinct values of the "DeptName" column from the "Employees" table.
select distinct DeptName
from Employees


-- Select the top 5 records from the "Employees" table.
select top 5 *
from Employees


-- Select all records from the "Employees" table, ordered by the "Salary" column in descending order.
select *
from Employees
order by Salary desc


-- Select the first 10 records from the "Employees" table, starting from the third record.
select *
from Employees
order by ID
offset 2 rows
fetch next 10 rows only


-- Select the average salary from the "Employees" table.
select AVG(Salary)
from Employees


-- Select the maximum and minimum salaries from the "Employees" table.
select MAX(Salary) , MIN(Salary)
from Employees


-- Select the top 3 highest salaries from the "Employees" table.
select top 3 *
from Employees
order by Salary desc


-- Select all records from the "Employees" table, ordered by "Name" in ascending order.
select *
from Employees
order by Name asc


-- Select the first 5 records from the "Employees" table, starting from the second record, ordered by "Salary" in descending order.
select *
from Employees
order by Salary desc
offset 1 rows
fetch next 5 rows only


-- Select the sum of all salaries from the "Employees" table.
select SUM(Salary)
from Employees


-- Select records from the "Employees" table where the "Salary" is between 40000 and 60000, ordered by "Salary" in ascending order.
select *
from Employees
where Salary between 40000 and 60000
order by Salary asc