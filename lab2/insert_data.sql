INSERT INTO client (client_name, last_name, email, phone_number) VALUES
('Ivan', 'Petrenko', 'ivan.petrenko@example.com', '+380501234567'),
('Olga', 'Shevchenko', 'olga.shev@example.com', '+380671112233'),
('Maksym' , 'Bondar', 'maks.bondar@example.com', '+380931234567'),
('Anna', 'Kowalska', 'anna.kowalska@example.com', '+48501122334'),
('Peter', 'Schmidt', 'peter.schmidt@example.com', '+4915112345678');

INSERT INTO address (country, city, street, postal_code, client_id) VALUES
('Ukraine', 'Kyiv', 'Shevchenka 12', '01001', 11),
('Ukraine', 'Lviv', 'Franko 3', '79000', 14),
('Ukraine', 'Odessa', 'Deribasivska 15', '65000', 13),
('Poland', 'Warsaw', 'Krakowska 8', '00-001', 15),
('Germany', 'Berlin', 'Alexanderplatz 1', '10178', 12);

INSERT INTO category (category_name, description) VALUES
('Electronics', 'Devices and gadgets'),
('Clothing', 'Men and women apparel'),
('Home', 'Home and kitchen appliances'),
('Books', 'Printed and digital books'),
('Sports', 'Sports and outdoor equipment');

INSERT INTO product (product_name, price, quantity, description, stock_status, image_url, category_id) VALUES
('Смартфон "Galaxy S30"', 29999, 50, 'Флагманський смартфон з покращеною камерою', 'in stock', 'https://example.com/images/galaxy-s30.png', 6),
('Ноутбук "ThinkPad X2"', 45000, 25, 'Потужний ноутбук для бізнесу', 'in stock', 'https://example.com/images/thinkpad-x2.png', 6),
('Бездротові навушники "AirSounds"', 4200, 150, 'Навушники з активним шумозаглушенням', 'out of stock', 'https://example.com/images/airsounds.png', 6);

INSERT INTO worker (worker_role, first_name, last_name, phone_number) VALUES
('admin', 'Dmytro', 'Koval', '+380501111111'),
('manager', 'Kateryna', 'Hrytsenko', '+380672222222'),
('operator', 'Oleh', 'Melnyk', '+380933333333'),
('courier', 'Serhii', 'Tkachenko', '+380504444444'),
('courier', 'Maria', 'Lytvyn', '+380505555555');

INSERT INTO orders (order_date, order_price, status, discount, client_id, address_id, worker_id) VALUES
('2025-10-01', 12400.00, 'confirmed', 5.00, 11, 16, 8),
('2025-10-02', 800.00, 'processing', 0.00, 14, 17, 8),
('2025-10-03', 1750.00, 'shipped', 10.00, 13, 18, 8),
('2025-10-04', 250.00, 'delivered', 0.00, 15, 19, 8),
('2025-10-05', 36000.00, 'confirmed', 15.00, 12, 20, 8);

INSERT INTO payment (payment_method, payment_status, price, order_id)
VALUES ('by card', 'paid', 12400, 7),
('by card', 'not paid', 800, 8),
('by card', 'paid', 1750, 9),
('by card', 'paid', 250, 10),
('by card', 'paid', 36000, 11);

INSERT INTO shipment (carrier, tracking_number, shipment_status, shipping_date, delivery_address, order_id, worker_id)
VALUES ('Нова Пошта', '20450123456789', 'shipped', '2025-10-13', 'м. Київ, вул. Хрещатик, 24, кв. 7', 10, 8);


INSERT INTO order_item (quantity, order_id, product_id) VALUES
(1, 11, 4),
(2, 10, 5),
(5, 9, 6),
(4, 8, 5),
(1, 7, 4);

