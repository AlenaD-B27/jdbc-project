select * from EMPLOYEES;

-- % for matching any sequence of characters
-- _ for matching any single character

/*
 - contains
 - startswith
 - endswith
 */

select * from EMPLOYEES
where FIRST_NAME like 'B%'; -- > starts with B

select * from EMPLOYEES
where FIRST_NAME like 'B_'; -- > starts with B and length is 2

select * from EMPLOYEES
where FIRST_NAME like 'B____';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '__z__'; --> 5 letters with the mid char is 'z'

select * from EMPLOYEES
where FIRST_NAME like '____e';

select * from EMPLOYEES
where FIRST_NAME like '%e';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '_a%';

select * from EMPLOYEES
where JOB_ID like '%IT%';

select * from EMPLOYEES
where FIRST_NAME like 'H%l';

