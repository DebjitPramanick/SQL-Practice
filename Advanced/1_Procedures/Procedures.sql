select * from persons;

insert into persons (name, age, gender) values
("Kunal", 56, "M"),
("Juhi", null , "F"),
("Rahul", 40, "M"),
("Rakesh", 30, "M");


# Procedure to get the elders (age > 25) data from table (Input parameter)
Delimiter &&
create procedure getElders()
begin
select * from persons
where age>25;
end &&
delimiter ;

call getElders()


# Procedure to get persons by gender from table (Input parameter)
Delimiter //
create procedure getByGender(IN var varchar(1))
begin
select * from persons
where gender = var;
end //
delimiter ;

call getByGender('F');


# Get female employee count using OUT parameter
Delimiter //
create procedure getFemaleCount(OUT totalEmp int)
begin
select count(*) into totalEmp from persons
where gender = "F";
end //
delimiter ;

call getFemaleCount(@F_Emp);
select @F_Emp as females;