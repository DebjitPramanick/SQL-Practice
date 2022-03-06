
# Create sales table
create table sales (
pId int,
price float,
stock int,
region varchar(20)
)

# Read sales table
select * from sales;

# Insert values
insert into sales values
(12, 23.50, 3, "India"),
(14, 35.50, 2, "USA"),
(16, 40.00, 5, "UK"),
(12, 23.50, 8, "India"),
(12, 23.50, 10, "Australia"),
(16, 40.00, 2, "USA"),
(18, 13.75, 1, "India"),
(12, 23.50, 3, "India"),
(12, 23.50, 2, "UK"),
(14, 35.50, 6, "USA"),
(16, 40.00, 1, "Australia");

# Show number of sold products in particular region
select pId, count(pID) as sold, region from sales group by region;

# Show profit for each product
select pId, sum(price*stock) as profit from sales group by pId;

# Show average sales for each product
select pId, round(avg(price*stock), 1) as avg_sales from sales group by pId;

# Showing count of employees at each location except "UK"
select location, count(*) as empCount from employees
where location != "UK" 
group by location