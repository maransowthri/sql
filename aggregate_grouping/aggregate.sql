-- 1. Number of bookings
select count(*) from bookings;

-- 2. Bookings that gave tip
select count(amount_tipped) from bookings;

-- 3. Booking date range
select min(distinct booking_date), max(distinct booking_date) from bookings;

-- min of varchar column returns first item in the albhapetical order and max is the reverse
select min(category) from tables;

-- 4. Total revenue
select sum(amount_billed) + sum(amount_tipped) from bookings;

-- 5. Average number of guests
select round(avg(num_guests), 2) from bookings;

-- 6. For how many tables you used full capacity and using Cash as payment method?
select count(*) from bookings as b 
inner join tables as t on b.table_id=t.id 
inner join payment_methods as p on p.id=b.payment_id
where b.num_guests=t.num_seats and p.name='Cash';