select * from worker where worker_role='courier';

select product_name, price, quantity from product where stock_status = 'in stock';

select order_id, order_price, discount from orders where discount>10;

insert into client (client_name, last_name, email, phone_number) 
values ('Svitlana', 'Stecenko', 'svitlana4142@example.com', '+380509968599');

select * from client;

INSERT INTO shipment (carrier, tracking_number, shipment_status, shipping_date, delivery_address, order_id, worker_id)
VALUES ('УкрПошта', '204501234789', 'delivered', '2025-11-13', 'м. Суми, вул. Линтварьових, 29', 5, 2);
select carrier from shipment where shipment_status='delivered';

select * from shipment;

update orders set status='delivered' where order_id=2;
select * from orders;

update product set quantity = quantity + 10 where product_id = 3;
select * from product;

delete from client where client_id=8;
select * from client;