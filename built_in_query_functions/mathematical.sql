-- 1.Arithematics
select price * billing_frequency as revenue from memberships;

-- 2. Functions
-- CEIL, FLOOR, ROUND, TRUNC or TRUNCATE (just cuts off the decimal places no matter what the value is)
select consumption from memberships;

-- 3. Concat
select concat(first_name, ' ', last_name) as Name from memberships;
select concat('$ ', price) as Price from memberships;

-- 4. Upper / lower case
select upper('Maran');
select lower('Maran');

-- 5. Finding length
select length('Maran');

-- 6. Trimming a string
select trim('    Maran     ');
select trim(leading ' ' from  '    Maran     ');

-- 7. Extracting month, day, day of the week from date
select extract(day from last_checkin), last_checkin from memberships;
select extract(month from last_checkin), last_checkin from memberships;
-- For Postgres
select extract(dow from last_checkin), last_checkin from memberships;
-- For MySQL
select weekday(last_checkin) from memberships;

-- 8. Convert time stamps into date or time
-- For MySQL
select convert(last_checkin, date), convert(last_checkin, time) from memberships;
-- For Postgres
select last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME from memberships;

-- 9. Finding difference between two timestamps
-- For MySQL
select TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) from memberships;
-- For Postgres
select last_checkin - last_checkout from memberships;

-- 10. Finding difference between two dates
-- For MySQL
select DATEDIFF(membership_end, membership_start) from memberships;
-- For Postgres
select membership_start - membership_end from memberships;

-- 11. Adding days to an existing date
-- For MySQL
select DATEADD(membership_start, INTERVAL 7 DAY) from memberships;
-- For Postgres
select membership_start + INTERVAL '7 DAY' from memberships;

