select * from employees;

select * from EMPLOYEES
where ROWNUM < 11;

select * from EMPLOYEES
where rownum <= 5
order by SALARY desc ; -- wrong! we need to order before selecting the row!

select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM <=5;

select min(SALARY) from (select distinct salary from EMPLOYEES order by SALARY desc)
where ROWNUM <= 5;

select * from EMPLOYEES
where salary = (select min(SALARY) from (select distinct salary from EMPLOYEES order by SALARY desc)
                where ROWNUM <= 5);

select * from EMPLOYEES
where salary = (select min(salary) from (select distinct salary from EMPLOYEES order by SALARY)
                                   where ROWNUM <= 3);