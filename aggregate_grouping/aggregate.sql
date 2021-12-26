-- 1. Number of bookings
select count(*) from bookings;

-- 2. Bookings that gave tip
select count(amount_tipped) from bookings;

-- 3. Booking date range
select min(distinct booking_date), max(distinct booking_date) from bookings;