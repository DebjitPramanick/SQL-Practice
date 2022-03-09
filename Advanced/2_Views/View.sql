
# Creating custom details view using certain attributes from table
create view customView 
as
select name, age from persons;

select * from customView;