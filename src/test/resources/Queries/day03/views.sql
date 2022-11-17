select * from Employees;

create view EmployeesInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials, FIRST_NAME||' makes '|| salary as Employees_Salary from employees;

select * from EMPLOYEESINFO;
select initials from EMPLOYEESINFO;
select Employees_Salary from EMPLOYEESINFO;

drop view EMPLOYEESINFO; -- deleting the view