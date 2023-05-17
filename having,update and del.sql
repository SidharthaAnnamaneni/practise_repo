-- UPDATE employeesalary
-- 	SET title = 'Salesman'
-- 	WHERE employeeid = 1001;
	
-- 	UPDATE employeesalary
-- 	SET title = 'Salesman' WHERE employeeID = 1001;
	
-- select title, count(title) as no_of_employees
-- from employeedemographics
-- inner join employeesalary
-- on employeedemographics.employeeid = employeesalary.employeeid
-- group by title
-- having count(title) >=2
-- order by count(title)

select title, avg(salary)
from employeedemographics
inner join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid
group by title
having avg(salary)>= 45000
order by avg(salary)

-- select * from employeedemographics

-- insert into employeedemographics
-- values (1234,'as','df', 25,'male')

-- delete from employeedemographics
-- where employeeid = 1234

select * from employeeerrors



