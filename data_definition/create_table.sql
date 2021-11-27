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

-- For both MySQL and PostgreSQL
create table employers (
	company_name varchar(100),
	company_address varchar(100),
	-- yearly_revenue float(), -- Apprximation
	yearly_revenue numeric(5, 2), -- Exactness; Allowed: 123.24; Not Allowed: 1234.343
	is_hiring boolean
)

-- For both MySQL and PostgreSQL
create table conversations (
	user_name varchar(200),
	employer_name varchar(250),
	message text,
	date_sent timestamp
)