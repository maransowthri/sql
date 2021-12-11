select u.first_name, a.street, c.name as city_name from users as u 
inner join address as a on a.id=u.address_id 
inner join city as c on c.id=a.city_id
where u.id=1 or u.id=2
order by u.id desc;