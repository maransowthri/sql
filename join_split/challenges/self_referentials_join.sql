-- Get all employee and their super visors
select e1.first_name as Employee, e2.first_name as Supervisor from employee as e1 
inner join employee e2 on e1.supervisor_id=e2.id;

insert into users
    (first_name)
values
    ('Maran'),
    ('Karan'),
    ('Kalees'),
    ('Mahesh');

insert into users_friend
    (user_id, friend_id)
values
    (1, 1);