-- 1. All rows with grouped total tipped  (prev booking + current) amount by date
select booking_date, amount_tipped, sum(amount_tipped) over(partition by booking_date) from bookings;
