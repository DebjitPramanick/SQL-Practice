
# Event will be triggered when a new entry has age less than 0
delimiter //
create trigger age_verify
before insert on persons
for each row 
if new.Age<0 then set new.Age = 0;
end if; //

select * from persons;

insert into persons values
(8, "Basu", "Rohan", -90, "M");