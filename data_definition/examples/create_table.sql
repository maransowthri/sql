create type employment_status as enum('self-employed', 'employed', 'unemployed');

create table users(
    -- MySQL
    id int primary key auto_increment,
    -- Postgres
    id serial primary key,
    
    full_name varchar(200) not null,
    yearly_salary int check (yearly_salary > 0),
    
    -- MySQL
    current_status enum('self-employed', 'employed', 'unemployed')
    -- Postgres
    -- current_status employment_status
);

create table employers(
    -- MySQL
    id int primary key auto_increment,
    -- Postgres
    id serial primary key,
    
    company_name varchar(200) not null,
    company_address varchar(300) not null,
    yearly_revenue float check (yearly_revenue > 0),
    is_hiring boolean default false
);

create table conversations(
    -- MySQL
    id int primary key auto_increment,
    -- Postgres
    id serial primary key,
    
    user_id int,
    employer_id int,
    message text not null
);