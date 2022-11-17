select * from employees;

select upper(EMAIL||'@gmail.com') as full_email from EMPLOYEES;
select lower(EMAIL||'@gmail.com') as full_email from EMPLOYEES;

select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

select email, length(EMAIL||'@gmail.com') as email_length from EMPLOYEES
order by 2;

select FIRST_NAME from employees
where length(FIRST_NAME) = 6;

select count(FIRST_NAME) from employees
where FIRST_NAME like '______';

-- substr(columnName, beginning index, index of char)
select substr(FIRST_NAME, 0, 1)||'.'||substr(LAST_NAME, 0, 1)||'.' as initials from EMPLOYEES;

select FIRST_NAME, substr(FIRST_NAME, -3,2) from EMPLOYEES;

select reverse(FIRST_NAME) from EMPLOYEES;
