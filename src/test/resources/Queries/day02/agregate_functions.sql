select count (distinct FIRST_NAME) from EMPLOYEES;

select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

select count(*) from EMPLOYEES
where SALARY > 6000;

select max(SALARY) from EMPLOYEES;

select min(SALARY) from EMPLOYEES;

select round(avg(SALARY), 2) from EMPLOYEES;

