select * from employees;

select FIRST_NAME as given_name from EMPLOYEES; -- the header will be upper case
select FIRST_NAME as "given name" from EMPLOYEES; -- exact!!!

select FIRST_NAME, SALARY*12 as annual_salary from EMPLOYEES
where FIRST_NAME='TJ';

select EMAIL||'@gmail.com' as gmail from EMPLOYEES;
select concat('Cydeo ', concat(EMAIL,'@gmail.com')) as gmail from EMPLOYEES;



