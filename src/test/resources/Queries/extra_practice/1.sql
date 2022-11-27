select * from books;

-- Display book name and related bookCategory name from library DB
select b.name, bc.name from books b left join book_categories bc
on b.book_category_id = bc.id;

-- Find me first 5 highest book categories based on book count
select bc.name as category, count(b.name) as total_books from book_categories bc left join books b
on b.book_category_id = bc.id
group by bc.name
order by 2 desc
limit 5;

-- Find me how many book we have in each category_id
select count(*) as amount_of_books, bc.id as category_id from books b left join book_categories bc
on b.book_category_id = bc.id
group by bc.id;

-- Find me how many book we have in each category_name
select count(*) as amount_of_books, bc.name as category from books b left join book_categories bc
on b.book_category_id = bc.id
group by bc.name;
