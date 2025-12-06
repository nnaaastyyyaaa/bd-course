--рахуємо кількість працівників за ролями
select worker_role,
COUNT(*) as total_workers
from worker
group by worker_role;

-- рахуємо загальну виручку за кожним методом оплати
select payment_method, sum(price) as revenue 
from payment
group by payment_method;

--рахуємо кількість продуктів у кожній категорії
select c.category_name, count(p.product_id) as total_products
from category c
join product p on c.category_id=p.product_id
group by c.category_name
having count(p.product_id)>0;


select p.product_name, p.price
from product p
left join order_item oi on p.product_id=oi.product_id
where oi.order_item_id is null;

select c.category_name, avg(p.price) as average_price
from product p join category c on p.category_id=c.category_id
group by c.category_name;

select
min(order_date) as first_order_date,
max(order_date) as last_order_date
from orders;

select c.client_name,
 c.last_name, 
 o.order_id, 
 o.status
from client c
left join orders o ON c.client_id=o.client_id;

