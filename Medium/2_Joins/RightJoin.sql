# Right join products table with orders table to get the sales and revenue for each item

select p.name, count(*) as sales, p.price*count(*) as revenue from products as p
right join orders as o on o.productId = p.productId
group by p.name

# Right join products table with orders table and left join with customers table to get the 
# info of delivered products

select p.name, c.name, c.city, orderedOn, deliveredOn from products as p
right join orders as o on o.productId = p.productId
left join customers as c on c.customerId = o.customerId
where delivered = 0;


# Right join products table with orders table and left join with customers table to get the 
# info of non delivered products

select p.name, c.name, c.city, orderedOn, deliveredOn from products as p
right join orders as o on o.productId = p.productId
left join customers as c on c.customerId = o.customerId
where delivered = 1;