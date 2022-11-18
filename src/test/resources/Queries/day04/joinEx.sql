select * from employees;

--1. Display all first_name and department_name

select * from EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES E inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME; -- inner join takes only matching info. Kimberly doesn't have department_name,
-- if I want to see Kimberly I need to do left join;

--2.Display all first_name and department_name including the  department without employee

select * from EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES E right join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

select FIRST_NAME, DEPARTMENT_NAME from DEPARTMENTS D left join EMPLOYEES E
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

select DEPARTMENT_NAME, count(*) from DEPARTMENTS D left join EMPLOYEES E
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
group by DEPARTMENT_NAME;


--3.Display all first_name and department_name including the  employee without department

select * from EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES E left join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select FIRST_NAME,DEPARTMENT_NAME from DEPARTMENTS D right join EMPLOYEES E
on d.DEPARTMENT_ID = e.DEPARTMENT_ID;


--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments

select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES E full join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


--5.Display All cities and related country names

select * from COUNTRIES;
select * from locations;
select CITY, COUNTRY_NAME from COUNTRIES C inner join LOCATIONS L
on c.COUNTRY_ID = l.COUNTRY_ID;


--6.Display All cities and related country names  including with countries without city

select CITY, COUNTRY_NAME from COUNTRIES C left join LOCATIONS L
on c.COUNTRY_ID = l.COUNTRY_ID;


--7.Display all department name and  street adresss

select DEPARTMENT_NAME, STREET_ADDRESS from LOCATIONS L inner join DEPARTMENTS D
on l.LOCATION_ID = d.LOCATION_ID;


--8.Display first_name,last_name and department_name,city for all employees

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY from EMPLOYEES E
    inner join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS L
on d.LOCATION_ID = l.LOCATION_ID;

-- where is Kimberly?

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY from EMPLOYEES E
left join DEPARTMENTS D
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID
left join LOCATIONS L
on d.LOCATION_ID = l.LOCATION_ID;

-- how many employees live in each city

select CITY, count(*) from EMPLOYEES E
left join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
left join LOCATIONS L
on d.LOCATION_ID = l.LOCATION_ID
group by CITY
order by 2;

--9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, country_name from EMPLOYEES E
inner join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS L
on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES C
on l.COUNTRY_ID = c.COUNTRY_ID;

-- how many employees departments we have in country name, with more than 20 departments in the country

select  country_name, count(*) from EMPLOYEES E
inner join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS L
on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES C
on l.COUNTRY_ID = c.COUNTRY_ID
group by country_name
having count(*) > 20
order by 2;
