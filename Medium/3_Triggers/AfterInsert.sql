create table persons (
id int auto_increment primary key,
name varchar(30),
age int,
gender varchar(1)
);

create table messages (
messageId int auto_increment primary key,
message varchar(100)
);

# Trigger for checking if age is null (After insert to table)
Delimiter //
create trigger checkAge
after insert on persons
for each row
begin if new.age is null then
insert into messages(message) value(concat('Hi',new.name,', please update your age.'));
end if;
end //
delimiter ;

insert into persons (name, age, gender) values
("Debjit", 21, "M"),
("Punam", null , "F"),
("Rohan", 20, "M"),
("Subir", null, "M");

select * from persons;
select * from messages;