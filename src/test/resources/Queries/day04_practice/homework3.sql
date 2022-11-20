select * from employees;
-- 1. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE
select COUNTRY_NAME, REGION_NAME from COUNTRIES C full join REGIONS R
on c.REGION_ID = r.REGION_ID;
-- 2. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
select FIRST_NAME, JOB_TITLE from JOBS J left join EMPLOYEES E
on J.JOB_ID = E.JOB_ID;
-- 3. FIND OUT DEPARTMENT_NAME AND CITY
select DEPARTMENT_NAME, CITY from DEPARTMENTS D left join LOCATIONS L
on d.LOCATION_ID = l.LOCATION_ID;
-- 4. FIND OUT ALL CITIES  AND COUNTRY NAMES
select CITY, COUNTRY_NAME from LOCATIONS l left join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;
-- 5. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME  FOR DEPARTMENT ID 80 OR 40
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME, d.DEPARTMENT_ID from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID in (80,40);
-- 6. FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
select CITY, COUNTRY_NAME,REGION_NAME from LOCATIONS L left join COUNTRIES C
on l.COUNTRY_ID = c.COUNTRY_ID
left join REGIONS R
on c.REGION_ID = r.REGION_ID;
-- 7. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY
select FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY from EMPLOYEES E inner join JOBS J
on E.JOB_ID = J.JOB_ID
inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
inner join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID;
-- 8. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
select FIRST_NAME,JOB_TITLE,DEPARTMENT_NAME,CITY,COUNTRY_NAME,REGION_NAME from EMPLOYEES E inner join JOBS J
on E.JOB_ID = J.JOB_ID
inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
inner join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID
inner join COUNTRIES C
on L.COUNTRY_ID = C.COUNTRY_ID
inner join REGIONS R
on C.REGION_ID = R.REGION_ID;

--9. FIND OUR  EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS
--  INCLUDING  WHERE DO NOT HAVE ANY EMPLOYEE.

select FIRST_NAME, LAST_NAME, E.DEPARTMENT_ID, DEPARTMENT_NAME from EMPLOYEES E right join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--10. FIND OUT ALL DEPARTMENT_NAME  , LOCATION_ID , AND COUNTRY_ID
-- INCLUDING THOSE LOCATIONS  WITH NO DEPARTMENT

select DEPARTMENT_NAME, L.LOCATION_ID, COUNTRY_ID from LOCATIONS L left join DEPARTMENTS D
on L.LOCATION_ID = D.LOCATION_ID;

--11.FIND OUT DEPARTMENT_NAME , LOCATION_ID , AND COUNTRY_NAME
-- INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT

select DEPARTMENT_NAME, D.LOCATION_ID, COUNTRY_NAME from COUNTRIES C left join LOCATIONS L
on C.COUNTRY_ID = L.COUNTRY_ID
left join DEPARTMENTS D
on L.LOCATION_ID = D.LOCATION_ID;

--12. FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT
-- INCLUDING THOSE DEPARTMENTS  DOES NOT HAVE ANY MATCHING EMPLOYEES

select FIRST_NAME, E.DEPARTMENT_ID, DEPARTMENT_NAME from EMPLOYEES E full join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;