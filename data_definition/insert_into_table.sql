-- For both MySQL and PostgreSQL
insert into users (
	full_name, yearly_salary, current_status
) values ('Maran Sowthri Kalailingam', 30000, 'employed');

insert into users (
	full_name, yearly_salary, current_status
) values 
('Karan', 40000, 'employed'),
('Kalees', 35000, 'self-employed'),
('Mahesh', 0, 'unemployed');

insert into employers 
(company_name, company_address, yearly_revenue, is_hiring)
values 
('iNautix Technologies', '113 Taramani Chennai', 4.5, false),
('BNY Mellon Technologies', '113 Taramani Chennai', 12.13, true),
('athenahealth', '113 MGR Road Chennai', 9, true);

insert into conversations
(user_name, employer_name, message, date_sent)
values
('kmaran', 'athenahealth', 'Hello World!', now()),
('kkaran', 'TN Police', 'Hello World!', now()),
('rkalees', 'Indian Army', 'Hello World!', now()),
('rmahesh', 'TN Police', 'Hello World!', now());