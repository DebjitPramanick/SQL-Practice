# 1. Create table
create table persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

# 2. Get all rows of a table
select * from persons;

# 3. Insert single data into tables
insert into persons values(
1, "Pramanick", "Debjit", 21
)

# 4. Insert multiple data
insert into persons values
(2, "Das", "Rahul", 16),
(3, "Kalam", "Sakib", 20),
(4, "Das", "Rakesh", 41),
(5, "Basu", "Rahul", 35),
(6, "Hazra", "Bimal", 30),
(7, "Hazra", "Sasanka", 43)

# 5. Select specific columns
select LastName, FirstName from persons;

# 6. Select distinct rows for certain columns
select distinct LastName from persons;

# 7. Update column value for certain entry
update persons set FirstName="Sujan" where id=1

# 8. Add column to a table
alter table persons add gender varchar(6)

# 8. Delete entry from table
delete from persons where id=2
