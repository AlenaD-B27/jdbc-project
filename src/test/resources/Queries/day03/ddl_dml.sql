select * from employees;


/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

create table scrumteam(
  empid INTEGER primary key ,
  firstname varchar(30) not null ,
  jobtitle varchar(20) not null,
  age integer,
  salary integer

);

select * from scrumteam;

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (1,'Mike', 'Tester', 34, 120000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (2, 'Alena', 'Tester', 27, 180000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (3,'John','Developer',37,160000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (4, 'Dembe', 'Developer', 42,200000);

commit; -- pushes changes to DB

update scrumteam
set salary=salary+5000;

update scrumteam
set salary=salary+5000
where jobtitle='Tester';

update scrumteam
set salary=salary+1000
where age > 40;

commit;

delete from scrumteam
where empid = 1;

select * from scrumteam;

commit;

delete from scrumteam
where jobtitle = 'Developer' and age > 40;
commit;

alter table scrumteam add gender varchar(10);

update scrumteam
set gender = 'Male'
where empid = 3;

commit;

ALTER table scrumteam rename column salary to annual_salary;

alter table scrumteam drop column gender;

select * from scrumteam;

alter table scrumteam rename to agileteam;

select * from agileteam;
commit;

truncate table agileteam;
commit;
select * from agileteam;

drop table agileteam;
