# Syntax for full outer join in MySQL workbench

select p.name, o.orderId from products as p left join 
orders as o on p.productId = o.productId
union 
select p.name, o.orderId from products as p right join 
orders as o on p.productId = o.productId