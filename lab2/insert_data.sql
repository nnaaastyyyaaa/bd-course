INSERT INTO client (client_id, client_name, last_name, email, phone_number) VALUES
(1, 'Ivan', 'Petrenko', 'ivan.petrenko@example.com', '+380501234567'),
(2, 'Olga', 'Shevchenko', 'olga.shev@example.com', '+380671112233'),
(3, 'Maksym' , 'Bondar', 'maks.bondar@example.com', '+380931234567'),
(4, 'Anna', 'Kowalska', 'anna.kowalska@example.com', '+48501122334'),
(5, 'Peter', 'Schmidt', 'peter.schmidt@example.com', '+4915112345678');

INSERT INTO address (address_id, country, city, street, postal_code, client_id) VALUES
(1, 'Ukraine', 'Kyiv', 'Shevchenka 12', '01001', 3),
(2, 'Ukraine', 'Lviv', 'Franko 3', '79000', 4),
(3, 'Ukraine', 'Odessa', 'Deribasivska 15', '65000', 1),
(4, 'Poland', 'Warsaw', 'Krakowska 8', '00-001', 5),
(5, 'Germany', 'Berlin', 'Alexanderplatz 1', '10178', 2);

INSERT INTO category (category_id, category_name, description) VALUES
(1, 'Electronics', 'Devices and gadgets'),
(2, 'Clothing', 'Men and women apparel'),
(3, 'Home', 'Home and kitchen appliances'),
(4, 'Books', 'Printed and digital books'),
(5, 'Sports', 'Sports and outdoor equipment');

INSERT INTO product (product_id, product_name, price, quantity, description, stock_status, image_url, category_id) VALUES
(1,'Смартфон "Galaxy S30"', 29999, 50, 'Флагманський смартфон з покращеною камерою', 'in stock', 'https://example.com/images/galaxy-s30.png', 1),
(2, 'Ноутбук "ThinkPad X2"', 45000, 25, 'Потужний ноутбук для бізнесу', 'in stock', 'https://example.com/images/thinkpad-x2.png', 1),
(3, 'Бездротові навушники "AirSounds"', 4200, 150, 'Навушники з активним шумозаглушенням', 'out of stock', 'https://example.com/images/airsounds.png', 1);

INSERT INTO worker (worker_id, worker_role, first_name, last_name, phone_number) VALUES
(1, 'admin', 'Dmytro', 'Koval', '+380501111111'),
(2, 'manager', 'Kateryna', 'Hrytsenko', '+380672222222'),
(3, 'operator', 'Oleh', 'Melnyk', '+380933333333'),
(4, 'courier', 'Serhii', 'Tkachenko', '+380504444444'),
(5, 'courier', 'Maria', 'Lytvyn', '+380505555555');

INSERT INTO orders (order_id, order_date, order_price, status, discount, client_id, address_id, worker_id) VALUES
(1, '2025-10-01', 12400.00, 'confirmed', 5.00, 1, 1, 2),
(2, '2025-10-02', 800.00, 'processing', 0.00, 2, 2, 2),
(3, '2025-10-03', 1750.00, 'shipped', 10.00, 3, 3, 2),
(4, '2025-10-04', 250.00, 'delivered', 0.00, 4, 4, 2),
(5, '2025-10-05', 36000.00, 'confirmed', 15.00, 5, 5, 2);

INSERT INTO payment (payment_id, payment_method, payment_status, price, order_id)
VALUES (1, 'by card', 'paid', 119999.00, 1),
(2, 'by card', 'not paid', 999.00, 2),
(3, 'by card', 'paid', 1333.00, 3),
(4, 'by card', 'paid', 897.00, 4),
(5, 'by card', 'paid', 99.00, 5);

INSERT INTO shipment (shipment_id, carrier, tracking_number, shipment_status, shipping_date, delivery_address, order_id, worker_id)
VALUES (1, 'Нова Пошта', '20450123456789', 'shipped', '2025-10-13', 'м. Київ, вул. Хрещатик, 24, кв. 7', 1, 2);


INSERT INTO order_item (order_item_id, quantity, order_id, product_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 5, 3, 1),
(4, 4, 4, 2),
(5, 1, 5, 3);

