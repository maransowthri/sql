create table building(
    -- id int primary key auto_increment,
    id serial primary key,
    name varchar(200) not null
);

create table team(
    -- id int primary key auto_increment,
    id serial primary key,
    name varchar(200) not null,
    building_id int references building(id) on delete set null
    -- building_id int,
    -- foreign key (building_id) references building(id) on delete set null
);

create table employee(
    -- id int primary key auto_increment,
    id serial primary key,
    first_name varchar(200) not null,
    last_name varchar(200) not null,
    birthdate date not null,
    email varchar(200) not null unique,
    team_id int default 1 references team(id) on delete set default
    -- team_id int,
    -- foreign key (team_id) references team(id) on delete set null
);

create table intranet(
    -- id int primary key auto_increment,
    id serial primary key,
    email varchar(200) references employee(email) on delete cascade,
    -- email varchar(200),
    -- foreign key (email) references employee(email) on delete cascade
    password varchar(200) not null
);

create table project(
    -- id int primary key auto_increment,
    id serial primary key,
    title varchar(200) not null,
    deadline date
);

create table project_employee(
    -- id int primary key auto_increment,
    id serial primary key,
    employee_id int references employee(id) on delete cascade,
    -- employee_id int,
    -- foreign key (employee_id) references employee(id) on delete cascade,
    project_id int references project(id) on delete cascade
    -- project_id int,
    -- foreign key (project_id) references project(id) on delete cascade,
);