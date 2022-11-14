select * from employees;

-- filter results

select * from EMPLOYEES
where FIRST_NAME='David';
-- String value is case sensitive and in single quote;

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='Peter';

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='David'and LAST_NAME='Austi';

select SALARY from EMPLOYEES
where SALARY > 6000;

select EMAIL from EMPLOYEES
where SALARY < 6000;

select * from EMPLOYEES
where SALARY > 6000 and DEPARTMENT_ID = 60;

select * from EMPLOYEES
where SALARY >= 3000 and SALARY <= 7000;

select * from EMPLOYEES
where EMPLOYEE_ID between 100 and 120; -- range is INCLUDED

select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='MK_MAN';

-- IN -- uses "or" logic

select * from EMPLOYEES
where JOB_ID IN('IT_PROG','MK_MAN');

select * from EMPLOYEES
where EMPLOYEE_ID IN(121,143,156,134);

select * from COUNTRIES
where COUNTRY_ID in('US', 'IT');

select COUNTRY_NAME from COUNTRIES
where COUNTRY_ID NOT in('US', 'IT');

select * from EMPLOYEES
where DEPARTMENT_ID =NULL;

select * from EMPLOYEES
where DEPARTMENT_ID is NULL;

select * from EMPLOYEES where MANAGER_ID is null;

select * from EMPLOYEES
where DEPARTMENT_ID is NOT NULL;

