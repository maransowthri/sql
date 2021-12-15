-- Union merge the rows (meaning gets only the distinct rows), 
-- but join merges two different table's column based on a common column
select * from users where id < 3
union
select * from users where id > 5;

-- when you perform union, make sure that the all the result sets have same columns (only the datatypes will be considered)
-- below query won't work
select * from address
union
select * from users

-- but below code will work
select name from city
union
select first_name from users;