create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from TESTERS;
select * from DEVELOPERS;


select * from DEVELOPERS
union
select  * from TESTERS
order by 1 desc ;

/*
 UNION ALL

 - Dont Remove DUPS
 - Dont sort the results
 */

select * from developers
union all
select * from testers;


select names from developers
union all
select names from testers;


-- if you wanna make an order use order by
select names from developers
union all
select names from testers
order by 1;

select * from TESTERS
minus
select * from DEVELOPERS;

select * from DEVELOPERS
minus
select * from TESTERS;

select * from developers
intersect
select * from testers;


select names from developers
intersect
select names from testers;
