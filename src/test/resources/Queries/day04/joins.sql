select * from employees;

select * from employees;

CREATE TABLE address(
                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL
);

INSERT INTO address (address_id, address, phone) VALUES (5,'1913 Hanoi Way',  28303384);
INSERT INTO address (address_id, address, phone) VALUES (7,'692 Joliet Street',  44847719);
INSERT INTO address (address_id, address, phone) VALUES (8,'1566 Inegl Manor',  70581400);
INSERT INTO address (address_id, address, phone) VALUES (10,'1795 Santiago',  86045262);
INSERT INTO address (address_id, address, phone) VALUES (11,'900 Santiago',  16571220);

CREATE TABLE customer(
                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address(address_id)
);

INSERT INTO customer (customer_id, first_name, last_name,address_id) VALUES (1, 'Mary' ,  'Smith',  5);
INSERT INTO customer (customer_id, first_name, last_name,address_id) VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer (customer_id, first_name, last_name,address_id) VALUES (3,  'Linda' ,  'Williams' ,  7);
INSERT INTO customer (customer_id, first_name, last_name,address_id) VALUES (4, 'Barbara' ,  'Jones' , 8);
INSERT INTO customer (customer_id, first_name, last_name,address_id) VALUES (5,  'Elizabeth' ,  'Brown' ,  NULL);

commit work;


/*

 INNER JOIN

 - it gives only matching portion of tables
 - the order tables does not matter

 */
select * from CUSTOMER;
select * from ADDRESS;


select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS inner join CUSTOMER
                        on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;

-- Another Q --> What if I want to customer.address_id information too
select FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS inner join CUSTOMER
                        on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;


-- Another Q --> Do I need to type table name always
-- ALIASES
-- Table Aliases
-- Customer  --> C
-- Employees --> E
-- Address   --> A

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A  inner join CUSTOMER C
                           on A.ADDRESS_ID = C.ADDRESS_ID;


/*
 LEFT OUTER JOIN / LEFT JOIN

 -- it will give  matching part + unique for LEFT table
 -- The order of is important

 */
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS A
                                on C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS A left outer join CUSTOMER C
                               on A.ADDRESS_ID = C.ADDRESS_ID;

/*
 RIGHT OUTER JOIN / RIGHT JOIN

 -- it will give  matching part + unique for RIGHT table
 -- The order of is important

 */
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from customer c right outer join address a
                                 on c.ADDRESS_ID = a.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from address a right join CUSTOMER c
                          on a.ADDRESS_ID = c.ADDRESS_ID;

/*

 LEFT OUTER WITH WHERE

-- Get me unique part from LEFT table

NOTE --> if there is a customer with c.address_id 6 , there is no matching data from address table
         So it will assign as value for a.address_id as NULL

 That is why we are checking address.address_id IS NULL to make get ONLY unique data from left side


 */
SELECT customer_id, first_name, last_name, address, phone FROM customer LEFT OUTER JOIN address
ON customer.address_id = address.address_id
where address.address_id is null;


