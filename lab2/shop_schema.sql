CREATE TABLE IF NOT EXISTS address (
address_id serial PRIMARY KEY,
country varchar(32) NOT NULL,
city varchar(32) NOT NULL,
street varchar(32) NOT NULL,
postal_code varchar(13) NOT NULL
);

CREATE TABLE IF NOT EXISTS client ( 
client_id serial PRIMARY KEY,
client_name varchar(32) NOT NULL,
email varchar(32) NOT NULL CHECK (email LIKE '_%@_%._%'),
phone_number varchar(13),
address_id integer references address(address_id)
);

CREATE TYPE role_name AS ENUM ('admin', 'courier', 'operator', 'manager');

CREATE TABLE IF NOT EXISTS worker (
worker_id serial PRIMARY KEY,
worker_role role_name NOT NULL,
first_name varchar(32) NOT NULL,
phone_number varchar(13) UNIQUE
);

CREATE TYPE status_name AS ENUM ('confirmed', 'processing', 'shipped', 'delivered', 'cancelled', 'refunded');

CREATE TABLE IF NOT EXISTS orders (
order_id serial PRIMARY KEY,
order_date date NOT NULL DEFAULT CURRENT_DATE,
order_price integer NOT NULL CHECK (order_price >= 0),
status status_name NOT NULL,
discount integer CHECK (discount >= 0 AND discount <= 100),
client_id integer NOT NULL references client(client_id),
address_id integer NOT NULL references address(address_id),
worker_id integer NOT NULL references worker(worker_id)
);

CREATE TABLE IF NOT EXISTS category (
category_id serial PRIMARY KEY,
category_name varchar(32) NOT NULL,
description varchar(255) NOT NULL
);