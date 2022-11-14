select * from employees
order by SALARY; -- ascending order by default

select * from employees
order by SALARY asc;

select * from EMPLOYEES
order by SALARY desc;

select * from EMPLOYEES
order by  FIRST_NAME desc;

-- Indexes of the headers start with 1. Salary = 8

select * from EMPLOYEES
order by 8 desc; -- if the number is red means the index is out of bounds

select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by SALARY desc ;