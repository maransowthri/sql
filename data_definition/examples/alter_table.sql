-- For both
alter table employers alter column is_hiring set default true;

-- For Postgres
alter table employers alter column yearly_revenue set data type float;

alter table users alter column full_name set data type varchar(200);

alter table users alter column yearly_salary set not null;

ALTER TABLE users ALTER COLUMN yearly_salary DROP DEFAULT;

ALTER TABLE users ALTER COLUMN yearly_salary DROP NOT NULL;

alter table users add constraint yearly_salary check (yearly_salary > 0);

-- For MySQL
alter table employers modify column yearly_revenue float;

alter table users modify column full_name varchar(200);

alter table users modify column yearly_salary int not null;

alter table users modify column yearly_salary int check (yearly_salary > 0);

