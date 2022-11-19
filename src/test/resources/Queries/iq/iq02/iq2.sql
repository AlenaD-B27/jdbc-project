-- 4. [Database] Based on the below tables:

/*
Employee Table
EmployeeID FirstName LastName City       State
10330      John      John     NY         NY
10449      Sarah     Lebat    Melbourne  Bourke
11012      Jon       Dallas   NY         NY
11013      Gheorghe  Honey    NY         NY
11014      Anton     Savar    NY         NY
*/
create table Emmployee_Table(
    EmployeeID INTEGER primary key ,
    FirstName varchar(10),
    LastName varchar(10),
    City varchar(85)
    -- Taumatawhakatangihangakoauauotamateaturipukakapiki-maungahoronukupokaiwhenuakitnatahu
    -- holds the world record for being the longest place name on the entire planet,
    -- at the length of 85 characters.
    ,
    State varchar(27)
    -- “Commonwealth of Massachusetts” has 27 letters
);

select * from EMMPLOYEE_TABLE;

insert into EMMPLOYEE_TABLE(EmployeeID, FirstName, LastName, City, State)
values (10330, 'John', 'John', 'NY', 'NY');
insert into EMMPLOYEE_TABLE(EmployeeID, FirstName, LastName, City, State)
values (10449, 'Sarah', 'Lebat', 'Melbourne', 'Bourke');
insert into EMMPLOYEE_TABLE(EmployeeID, FirstName, LastName, City, State)
values (11012, 'Jon', 'Dallas', 'NY', 'NY');
insert into EMMPLOYEE_TABLE(EmployeeID, FirstName, LastName, City, State)
values (11013, 'Gheorghe', 'Honey', 'NY', 'NY');
insert into EMMPLOYEE_TABLE(EmployeeID, FirstName, LastName, City, State)
values (11014, 'Anton', 'Savar', 'NY', 'NY');

commit;

/*
Payments Table
EmployeeID SalaryDate MonthID Value$
10330      June       6       128
10330      July       7       158
10330      August     8       133
10330      September  9       120
10330      October    10      188
10330      November   11      160
10330      December   12      105
10449      September  9       150
10449      October    10      158
10449      November   11      160
10449      December   12      180
 */

 create table Payments_Table(
     EmployeeID INTEGER references EMMPLOYEE_TABLE(EmployeeID),
     SalaryDate varchar(9),
     MonthID INTEGER,
     Value$ INTEGER
 );

select * from PAYMENTS_TABLE;

insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10330, 'June', 6, 128);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10330, 'July', 7,158);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10330, 'August', 8, 133);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10330, 'September', 9, 120);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10330, 'October', 10, 188);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10330, 'November', 11, 160);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10330, 'December', 12, 105);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10449, 'September', 9, 150);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10449, 'October', 10, 158);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10449, 'November', 11, 160);
insert into PAYMENTS_TABLE(employeeid, salarydate, monthid, value$)
values (10449, 'December', 12, 180);

commit;

select * from EMMPLOYEE_TABLE;
select * from PAYMENTS_TABLE;

-- 1. Write an SQL query to display all employees having their name starting with the letter 'J'

select * from EMMPLOYEE_TABLE
where FirstName like 'J%';

-- 2. Write an SQL query to display the total amount earned by each employee

select FirstName||' '||LastName as employee_name, sum(Value$) as total_earned
from EMMPLOYEE_TABLE E left join PAYMENTS_TABLE P
on e.EmployeeID = p.EmployeeID
group by FirstName||' '||LastName
order by total_earned desc;