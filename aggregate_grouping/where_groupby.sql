-- 1. counts of expensive bookings (amount_billed > 30) by date
select booking_date, count(*) from bookings where amount_billed > 30 group by booking_date;

-- 2. Highly profitable dates (total amount_billed > 100)
select booking_date, count(*) from bookings group by booking_date having sum(amount_billed) > 100;

-- 3. What's the worst day? (the day at which the total amount_billed is least)
select booking_date, sum(amount_billed) as billed from bookings group by booking_date order by billed limit 1;