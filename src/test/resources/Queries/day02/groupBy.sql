select avg(salary) from employees
where JOB_ID='IT_PROG';


select count(distinct JOB_ID) from EMPLOYEES; -- 19

select avg(SALARY) from EMPLOYEES
group by JOB_ID; -- avg salary of each JOB_ID group -- 19 lines

select JOB_ID, avg(SALARY), max(SALARY), min(SALARY) from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID, max(SALARY), min(SALARY), round(avg(SALARY)), count(*) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by max(SALARY), min(SALARY) desc;

select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID
order by 2 desc;

select REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by 2 desc;

