-- For both
alter table employers alter column is_hiring set default true;

-- For Postgres
alter table employers alter column yearly_revenue set data type float;

-- For MySQL
alter table employers modify column yearly_revenue float;

-- For Postgres
alter table users alter column full_name set data type varchar(200);

-- For MySQL
alter table users modify column full_name varchar(200);
