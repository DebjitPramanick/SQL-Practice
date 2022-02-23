create table employees (
id int,
name varchar(40),
gender varchar(1),
salary int,
experience int,
location varchar(20),
company varchar(20),
primary key(id)
);

insert into employees values
(1, "Debjit", "M", 130000, 1, "India", "Google"),
(2, "Rashmita", "F", 130000, 1, "USA", "Google"),
(3, "Punam", "F", 100000, 1, "UK", "Amazon"),
(4, "Emillie", "F", 230000, 2, "UK", "Google"),
(5, "Rahul", "M", 230000, 3, "India", "Microsoft"),
(6, "Jacob", "M", 330000, 5, "UK", "Paypal"),
(7, "Subhadeep", "M", 100000, 1, "India", "Amazon"),
(8, "Ankita", "F", 200000, 3, "India", "Amazon"),
(9, "Rakesh", "M", 140000, 2, "India", "Amazon");

select * from employees;

# Show employee name, company and salary who has the highest salary
select name, salary, company from employees where salary = (select max(salary) from employees)

# Show employee name, company and salary who has less than average salary of all employees
select name, salary, company from employees where salary < (select avg(salary) from employees)