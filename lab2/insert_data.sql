INSERT INTO product (product_name, price, quantity, description, stock_status, image_url) VALUES
('Смартфон "Galaxy S30"', 29999, 50, 'Флагманський смартфон з покращеною камерою', 'In stock', 'https://example.com/images/galaxy-s30.png'),
('Ноутбук "ThinkPad X2"', 45000, 25, 'Потужний ноутбук для бізнесу', 'In stock', 'https://example.com/images/thinkpad-x2.png'),
('Бездротові навушники "AirSounds"', 4200, 150, 'Навушники з активним шумозаглушенням', 'Out of Stock', 'https://example.com/images/airsounds.png');

INSERT INTO order_item (quantity, order_id, product_id) VALUES
(1, 1, 1),
(2, 1, 2);

INSERT INTO payment (payment_method, payment_status, price, order_id)
VALUES ('by card', 'paid', 119999.00, 1);

INSERT INTO shipment (carrier, tracking_number, shipment_status, shipping_date, delivery_address, order_id, worker_id)
VALUES ('Нова Пошта', '20450123456789', 'shipped', '2025-10-13', 'м. Київ, вул. Хрещатик, 24, кв. 7', 1, 2);