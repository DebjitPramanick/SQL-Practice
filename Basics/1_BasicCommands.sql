# 1. To show all the databases
show databases;

# 2. To create database
create database test;

# 3. To use database
use test;

# 4. Create table
create table persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

# 4. Read table
describe persons;

# 5. Get all rows of a table
select * from persons;

# 6. Insert single data into tables
insert into persons values(
1, "Pramanick", "Debjit", 21
)

# 7. Insert multiple data
insert into persons values
(2, "Das", "Rahul", 16),
(3, "Kalam", "Sakib", 20),
(4, "Das", "Rakesh", 41),
(5, "Basu", "Rahul", 35),
(6, "Hazra", "Bimal", 30),
(7, "Hazra", "Sasanka", 43)