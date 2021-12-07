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


create table sales (
    -- MySQL
    id int primary key auto_increment,
    -- PostgreSQL
    -- id serial primary key,
    date_created timestamp default current_timestamp,
    date_fulfilled timestamp,
    customer_name varchar(250) not null,
    product_name varchar(250) not null,
    volume numeric(10, 2) check (volume >= 0),
    is_recurring boolean default false,
    is_disputed boolean default false
)