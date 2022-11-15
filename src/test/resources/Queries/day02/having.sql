select * from employees;

select JOB_ID, avg(salary) from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000
order by 2 desc;

select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5
order by 2 desc;

select FIRST_NAME, count(*) as first_name_count from EMPLOYEES
group by FIRST_NAME
having count(*) > 1
order by 2 desc ;
