-- 1. Find total number of guests & bookings by date
select booking_date as BookingDate, sum(num_guests) as NoOfGuests, sum(id) as NoOfBookings from bookings 
group by booking_date;

-- 2. Find number of bookings by payment type & date
select p.name, b.booking_date, count(*) as noof from bookings as b
inner join payment_methods as p on b.payment_id=p.id
group by p.name, b.booking_date;