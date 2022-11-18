select * from employees;

-- display manager name of 'Neena'

select MANAGER_ID from EMPLOYEES
where FIRST_NAME = 'Neena';

select FIRST_NAME,LAST_NAME from EMPLOYEES
where EMPLOYEE_ID = (select MANAGER_ID from EMPLOYEES
                     where FIRST_NAME = 'Neena');


select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;

select workers.FIRST_NAME, workers.LAST_NAME, managers.FIRST_NAME, managers.LAST_NAME from EMPLOYEES workers left join EMPLOYEES managers
on workers.MANAGER_ID = managers.EMPLOYEE_ID
order by 1;

