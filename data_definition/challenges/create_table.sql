create table products (
    product_name varchar(200) not null,
    price numeric(10, 2) not null check (price > 0),
    description text,
    amount_in_stock int check (amount_in_stock >= 0),
    image varchar(500) not null
)