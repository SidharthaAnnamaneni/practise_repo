-- select  firstname || ' ' || lastname as fullname, salary
-- from employeedemographics as demo
-- join employeesalary as sal
-- on demo.employeeid = sal.employeeid

-- select * 
-- from employeedemographics

-- select * 
-- from employeesalary

-- create temp table temp_employeesal (
-- employeeid int,
-- title varchar(50),
-- salary int)

-- select * from temp_employeesal

-- insert into temp_employeesal 
-- values
-- ('101','HR',45000)

-- -- update temp_employeesal
-- -- set title ='HR'
-- -- where employeeid = 101 

-- insert into temp_employeesal 
-- 	select * from employeesalary
	
create temp table temp_employee02
(
title varchar(50),
Employees_per_job int,
avg_age int,
avg_sal int)

select * from temp_employee02

Insert into temp_employee02
select title, count(title), avg(age), avg(salary) 
from employeedemographics as demo
inner join employeesalary as sal 
on demo.employeeid = sal.employeeid	
group by title

Alter table temp_employee02
	drop column employeeid
	
	select employeeid, salary from employeesalary
	order by salary desc
	limit 4 
	
	create temp table temp_sal
	(emp_id int,
	sal int)
	
	insert into temp_sal
(	select employeeid, salary from employeesalary
	order by salary desc
	limit 4  )
	
	select * from ( select employeeid, salary from employeesalary
	order by salary desc
	limit 4) as emp_sala  
	order by salary
	limit 1
