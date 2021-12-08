select customer_name,product_name from sales where id=13;

select * from sales where is_recurring;

select * from sales order by volume desc limit 10;

select * from sales where is_disputed and volume > 1000;

select * from sales where date_created > '2021-11-01' and date_created < '2022-05-01';

-- Or

select * from sales where date_created between '2021-11-01' and '2022-05-01';