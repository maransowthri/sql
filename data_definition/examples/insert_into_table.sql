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

insert into city (name) values ('India'), ('USA'), ('Germany'), ('Australia'), ('Canada');

insert into address
(street, house_number, city_id)
values
('Malar Street', '113', 10),
('Taramani Road', '133A', 11),
('Anna Nagar', '45D', 12),
('Singh Street', '67D', 13)

insert into users
(first_name, last_name, email, address_id)
values
('Maran', 'Sowthri', 'maran@gmail.com', 1),
('Vignesh', 'S', 'vicky@gmail.com', 2),
('Arjun', 'Muthiah', 'arjun@gmail.com', 3),
('Rohit', 'Sharma', 'rohit@outlook.com', 4);