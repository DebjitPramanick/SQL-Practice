# Left join products table twith orders table and customers table
select p.name, p.price, delivered, c.customerId, c.name, c.city from products as p
left join orders as o on
o.productId = p.productId
left join customers as c on
c.customerId = o.customerId

# Left join customers table with orders table and products table to get the sales based on city
select c.city, count(*) as sales from customers as c
left join orders as o on o.customerId = c.customerId
left join products as p on p.productId = o.productId
group by c.city