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


# Showing count of employees and total salary for each location where total salary is > 200000
select count(id), sum(salary) as total from employees group by location having sum(salary) > 200000;

# Showing count of employees in each company which has avg salary >135000
select company, count(*) as empCount from employees
group by company
having avg(salary)>135000