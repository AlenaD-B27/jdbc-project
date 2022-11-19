-- 1-Can you display sales person names ending with “th”?

SELECT Sp_Name FROM SalesPerson
where Sp_Name LIKE '%th';

-- 2-Can you display company names for company_id 21,32,412,43,25 ?

SELECT Company_name FROM Company
where Company_id is in (21,32,412,43,25);

-- 3-How many Sales person we have in total ?

SELECT COUNT(*) FROM SalesPerson;

-- 4-Can you display the sales person name who made a sale to company name  “Walmart”?

SELECT Sp_name FROM SalesPerson SP
    inner join Sales S
        on SP.Sp_id = S.Sp_id
    left join Company C
        on S.Company_id = C.Company_id
where Company_name in ('Walmart');


-- 5-Can you display average sales amount for each sales person id?

SELECT ROUND(AVG(Amount)), Sp_id FROM Sales
group by Sp_id
order by 1 desc;