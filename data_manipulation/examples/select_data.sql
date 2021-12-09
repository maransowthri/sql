select customer_name,product_name from sales where id=13;

select * from sales where is_recurring;

select * from sales order by volume desc limit 10;

select * from sales where is_disputed and volume > 1000;

select * from sales where date_created > '2021-11-01' and date_created < '2022-05-01';

-- Or

select * from sales where date_created between '2021-11-01' and '2022-05-01';

-- This just ignores Company A, Company B & Company C
select * from sales where customer_name > 'Company C';

select * from sales where extract(day from date_fulfilled - date_created) <= 5;

select * from sales order by volume desc offset 6;

select distinct customer_name from sales;

-- 2nd most highest volume
select volume from sales where volume <> (select volume from sales order by volume desc limit 1) order by volume desc limit 1;