Final bd scheme:

# Client (Клієнт)

- client_id (PK)
- client_name
- email
- phone_number (не більше 13 символів)

# Address (Адреса)

- address_id (PK)
- country
- city
- street
- postal_code
- client_id

# Worker (Працівник)

- worker_id (PK)
- role (admin, manager, operator, courier)
- first_name
- last_name
- phone

# Order (Замовлення)

- order_id (PK)
- date
- order_price
- status (confirmed, processing, shipped, delievered, cancelled, refunded)
- discount
- client_id
- address_id
- worker_id

# Category (Категорія)

- category_id (PK)
- category_name
- description

# Product (Товар)

- product_id (PK)
- product_name
- price
- quantity
- description
- stock_status (In stock, Out of Stock, Coming soon)
- image_url
- category_id

# OrderItem (Позиція замовлення)

- orderItem_id (PK)
- quantity
- order_id
- product_id

# Payment (Платіж)

- payment_id (PK)
- payment_date
- payment_method(by card, online, by cash on delievery)
- payment_status(paid/ not paid)
- price
- order_id

# Shipment (Доставка)

- shipment_id (PK)
- carrier
- tracking_number
- shipment_status
- shipping_date
- delivery_address
- order_id
- worker_id
