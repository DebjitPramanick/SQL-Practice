
# Orders table

create table orders(
orderId int auto_increment, 
productId int, 
customerId int,
amount int,
orderedOn date,
deliveredOn date,
delivered boolean,
primary key(orderId)
);

insert into orders (productId, customerId, amount, orderedOn, deliveredOn, delivered) values
(1, 1, 300, "2021-10-12", "2021-10-14", true),
(1, 2, 300, "2021-10-15", "2021-10-18", true),
(2, 4, 800, "2021-8-25", "2021-8-28", true),
(5, 3, 750, "2021-5-8", null, false),
(5, 5, 750, "2021-10-12", "2021-10-17", true),
(1, 5, 300, "2021-6-28", "2021-7-2", true),
(3, 4, 1000, "2021-11-20", null, false),

# Customers table

create table customers(
customerId int auto_increment,
name varchar(30),
city varchar(20),
primary key(customerId)
);

insert into customers (name, city) values
("Rahul", "Kolkata"),
("Anil", "Mumbai"),
("Kunal", "Bangalore"),
("Rohan", "Kolkata"),
("Sakib", "Mumbai");

# Products table

create table products(
productId int auto_increment, 
name varchar(30),
price int,
primary key(productId)
);

insert into products (name, price) values
("Headphones", 300),
("Powerbank", 800),
("Keyboard", 1000),
("Adapter", 500),
("Mouse", 750);