-- inner join - joining only common columns
select u.first_name, a.street, c.name as city_name from users as u 
inner join address as a on a.id=u.address_id 
inner join city as c on c.id=a.city_id
where u.id=1 or u.id=2
order by u.id desc;


-- left join - merging all the common data from right table to left
select c.name, u.first_name, a.street from city as c
left join address as a on c.id=a.city_id
left join users as u on u.address_id=a.id;

select c.name as city_name, u.first_name from city as c
left join address as a on c.id=a.city_id
left join users as u on a.id=u.address_id;

-- Cross join - combinations of all the entries (can't use 'on' condition here)
select * from users cross join address;