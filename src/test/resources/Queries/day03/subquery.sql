select * from employees;

select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where salary = (select max(salary) from Employees);

select FIRST_NAME from EMPLOYEES
where SALARY = (select min(salary) from EMPLOYEES);

select * from EMPLOYEES
where salary = (select max(salary) from Employees where SALARY < (select max(salary) from Employees));

select * from EMPLOYEES
where salary = (select min(salary) from Employees where SALARY > (select min(salary) from Employees));

select * from EMPLOYEES
where salary > (select round(avg(salary)) from EMPLOYEES);