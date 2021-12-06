-- MySQL
create table users_temp(
    id int primary key auto_increment,
    first_name varchar(200) not null,
    last_name varchar(200) not null,
    full_name varchar(401) generated always as (concat(first_name, ' ', last_name)),
    yearly_salary float check (yearly_salary > 0)
)