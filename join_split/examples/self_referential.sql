create table employee (
    id serial primary key,
    first_name varchar(200) not null,
    last_name varchar(200) not null,
    supervisor_id int references id on delete set null
);

create table users (
    id serial primary key,
    first_name varchar(200) not null
);

create table users_friend (
    user_id int references users(id) on delete cascade,
    friend_id int references users(id) on delete cascade,
    primary key (user_id, friend_id),
    check (user_id != friend_id)
);