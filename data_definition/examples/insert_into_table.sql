-- For both MySQL and PostgreSQL
insert into users
(full_name, yearly_salary, current_status)
values
('Karan Sasthiri Kalailingam', 30000, 'employed'),
('Kaleeswaran Ravichandran', 40000, 'employed'),
('Mahesh Kannan Ravichandran', 1000, 'unemployed');

insert into employers 
(company_name, company_address, yearly_revenue, is_hiring)
values
('BNY Mellon', 'Chennai 600001', 13.6, true),
('athenahealth', 'Chennai 600001', 10, true),
('Twitter', 'Chennai 600001', 17.3, true);

insert into conversations
(user_id, employer_id, message)
values
(1, 1, 'Hello World!'),
(1, 2, 'Good Morning!'),
(2, 3, 'Hope you are doing well!'),
(3, 2, 'Have a great day!!');