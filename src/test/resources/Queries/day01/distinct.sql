select * from employees;
select FIRST_NAME from EMPLOYEES; -- 107 results
select distinct FIRST_NAME from EMPLOYEES; -- no duplicates, 91 results

select distinct JOB_ID from JOBS;
select JOB_ID from JOBS;
-- id is already unique

select distinct JOB_ID from EMPLOYEES; -- 19 unique
select JOB_ID from EMPLOYEES; -- 107 as the number of employees

select distinct COUNTRY_ID from LOCATIONS;