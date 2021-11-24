-- MySQL
create table users (
	full_name varchar(50),
    yearly_salary int,
    current_status enum('employed', 'self-employed', 'unemployed')
);

-- PostgreSQL
create type employment_status AS enum('employed', 'self-employed', 'unemployed');

create table users (
	full_name varchar(50),
	yearly_salary int,
	current_status employment_status
)