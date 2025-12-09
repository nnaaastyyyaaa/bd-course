# delete_image_url

- Модель до:
  model product {
  product_id Int @id @default(autoincrement())
  product_name String
  price Int
  quantity Int
  description String @db.VarChar(255)
  stock_status stock_status_name
  image_url String?
  category_id Int
  order_item order_item[]
  category category @relation(fields: [category_id], references: [category_id], onDelete: NoAction, onUpdate: NoAction)
  }

- Модель після:
  model product {
  product_id Int @id @default(autoincrement())
  product_name String
  price Int
  quantity Int
  description String @db.VarChar(255)
  stock_status stock_status_name
  category_id Int
  order_item order_item[]
  category category @relation(fields: [category_id], references: [category_id], onDelete: NoAction, onUpdate: NoAction)
  review review[]
  }

# add-review-model

Додано нову модель:

model review {
id Int @id @default(autoincrement())
rating Int
comment String?
product product @relation(fields: [product_id], references: [product_id])
product_id Int
client client @relation(fields: [client_id], references: [client_id])
client_id Int
}

Таблиця до вставки даних:
![alt text](<Знімок екрана 2025-12-09 о 14.58.43.png>)

Таблиця після виконання файлу addData.js:
![alt text](<Знімок екрана 2025-12-09 о 15.08.23.png>)
