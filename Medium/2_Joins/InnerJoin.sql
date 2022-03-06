# Inner Join

create table cricket(id int auto_increment, name varchar(30), primary key(id));
create table football(id int auto_increment, name varchar(30), primary key(id));

insert into cricket (name) values ('Stuart'), ('Michael'), ('John'), ('Hayden');
select * from cricket;

insert into football (name) values ('Stuart'), ('Michael'), ('John'), ('Robert');
select * from football;

# Select players who are part of both cricket and football team
select * from cricket as c inner join football as f
on c.name = f.name;

# Examples on universal table from "Tables.sql"

# Join customers table with orders table where customerId matches
select * from orders as o inner join customers as c
on c.customerId = o.customerId;

# Join customers table with orders & products tables where customerId & productId matches
select * from orders as o inner join customers as c
on c.customerId = o.customerId inner join
products as p on p.productId = o.productId;