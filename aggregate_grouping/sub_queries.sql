-- 1. What's the worst day? (the day at which the total amount_billed is least)
select min(billed)
from (
	select booking_date, sum(amount_billed) as billed from bookings group by booking_date
) as daily_table;
