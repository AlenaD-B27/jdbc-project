create view IQ1 as
select EMPLOYEE_ID, FIRST_NAME||' '||LAST_NAME as name, SALARY from employees;

/* Write a query to print the name and salary for all employees in the Employee
table who earn a salary larger than $500. Sort your results in ascending order of
the last 3 characters in the employee's name, if two or more employees have
names ending with same 3 characters, then sort them by highest (descending)
salary.
 */

select name, SALARY from IQ1
where SALARY > 500
order by substr(name, -3), SALARY desc;


