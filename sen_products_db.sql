
-- Create database
CREATE DATABASE sen_products_database;

SHOW DATABASES;

-- using the created database
USE sen_products_database

-- create table products
CREATE TABLE products (
	id int NOT NULL,
	name varchar(255) NOT NULL,
  price_$ decimal(10, 2),
  size ENUM('small', 'medium', 'large'),
	description varchar(255),
  avaliablity ENUM('in stock', 'out of stock'),
	created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
);

-- create table categories
CREATE TABLE categories (
	id int NOT NULL, 
  name varchar(255) NOT NULL,
  description varchar(255),
  PRIMARY KEY (id)
);

-- create table product_categories
CREATE TABLE product_categories (
	id int NOT NULL,
  product_id int,
  category_id int,
  FOREIGN KEY (product_id) REFERENCES products(id),
  FOREIGN KEY (category_id) REFERENCES categories(id),
  PRIMARY KEY (id)
);

-- create table users
CREATE TABLE users(
	id int NOT NULL,
  first_name varchar(255),
  last_name varchar(255),
  email varchar(255),
  password varchar(255),
  phone_number varchar(255),
  address text,
  city varchar(255),
  state varchar(255),
  postal_code varchar(255)
);

-- create table admin
CREATE TABLE admin (
	id int NOT NULL,
  name varchar(255),
  role ENUM('SuperAdmin', 'Manager', 'Moderator', 'Support', 'Editor'),
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  user_id int,
  FOREIGN KEY (user_id) REFERENCES users(id),
  PRIMARY KEY (id)
);

-- create table orders
CREATE TABLE orders (
	id int NOT NULL,
  total_amount decimal(10, 2),
  payment_status ENUM('paid', 'pending', 'not-paid'),
  shipping_status ENUM('shipped', 'processing', 'delivered'),
  order_date datetime,
  user_id int,
  FOREIGN KEY (user_id) REFERENCES users(id),
  PRIMARY KEY (id)
);

-- create table order_products
CREATE TABLE order_products (
	id int NOT NULL,
  quantity int,
  price_$ decimal(10, 2),
  order_id int,
  product_id int,
  FOREIGN KEY (order_id) REFERENCES orders(id),
	FOREIGN KEY (product_id) REFERENCES products(id),
  PRIMARY KEY (id)
);

-- create table payment
CREATE TABLE payment (
	id int NOT NULL,
  amount decimal(10, 2),
  payment_method ENUM('Credit Card', 'Debit Card', 'Cash On Delivery', 'Bank Transfer'),
  payment_date datetime DEFAULT CURRENT_TIMESTAMP,
  order_id int,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  PRIMARY KEY (id)
);

-- create table shipping
CREATE TABLE shipping (
	id int NOT NULL,
  shipping_method ENUM('Express', 'Standard'),
  shipping_date datetime,
  expected_delivery_date datetime,
  recipient_name varchar(255),
  recipient_address text,
  order_id int,
	FOREIGN KEY (order_id) REFERENCES orders(id),
	PRIMARY KEY (id)
);

-- insert into categories
INSERT INTO categories
(id, name, description)
values (1, 'Electronics', 'A category for electronic gadgets and devices.')

-- insert into categories
INSERT INTO categories
(id, name, description)
values (2, 'Clothing', 'A category for fashionable clothing items.')

-- insert into categories
INSERT INTO categories
(id, name, description)
values (3, 'Home Decor', 'A category for home decoration and furnishing items.')

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (1, 'Laptop', 999.90, 'medium', 'A high-performance laptop with a powerful processor and a large SSD.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (2, 'Smart TV', 649.99, 'medium', 'A 55-inch 4K Ultra HD Smart TV with built-in streaming apps.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (3, 'Wireless Headphones', 199.90, 'medium', 'Noise-canceling wireless headphones with long battery life.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (4, 'Jeans', 99.90, 'large', 'Classic fit jeans made from durable denim fabric.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (5, 'Dress', 79.90, 'medium', 'A stylish knee-length dress perfect for special occasions.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (6, 'T-shirt', 15.90, 'small', 'Comfortable and colorful t-shirt for children.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (7, 'Table Lamp', 40.90, 'small', 'Elegant table lamp with a ceramic base and fabric shade.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (8, 'Wall Art', 15.90, 'large', 'Canvas wall art featuring a scenic landscape painting.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (9, 'Throw Pillow', 20.90, 'medium', 'Decorative throw pillow with a geometric pattern.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (10, 'Mattress', 50.90, 'large', 'Sleping equipment.', 'in stock', now(), now())

-- insert into products
INSERT INTO products
(id, name, price_$, size, description, avaliability, created_at, updated_at)
values (11, 'Table', 10.90, 'large', 'Dinning Equipment.', 'in stock', now(), now())

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (1, 1, 1)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (2, 2, 1)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (3, 3, 1)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (4, 4, 2)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (5, 5, 2)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (6, 6, 2)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (7, 7, 3)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (8, 7, 1)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (9, 8, 3)

-- insert into product_categories
INSERT INTO product_categories
(id, product_id, category_id)
values (10, 9, 3)

-- insert into users
INSERT INTO users
(id, first_name, last_name, email, password, phone_number, address, city, state, postal_code)
values (1, 'Sen', 'Samie', 'sensamie1@gamil.com', '123456', '+24383427375', '3, Choba', 'Port Harcourt', 'Rivers', '5120226')

-- insert into users
INSERT INTO users
(id, first_name, last_name, email, password, phone_number, address, city, state, postal_code)
values (2, 'Kelvin', 'Chukwudi', 'kev2@gamil.com', '123456', '+24345567423', '5, Rumuokro', 'Port Harcourt', 'Rivers', '5130022')

-- insert into users
INSERT INTO users
(id, first_name, last_name, email, password, phone_number, address, city, state, postal_code)
values (3, 'Joshua', 'Eemka', 'josh12@gamil.com', '123456', '+24345567473', '7, Mile 1', 'Lagos', 'Lagos', '5131478')

-- insert into users
INSERT INTO users
(id, first_name, last_name, email, password, phone_number, address, city, state, postal_code)
values (4, 'Francis', 'John', 'farncisj12@gamil.com', '123456', '+24347467423', '2, Summit', 'Asaba', 'Delta', '3891478')

-- insert into users
INSERT INTO users
(id, first_name, last_name, email, password, phone_number, address, city, state, postal_code)
values (5, 'Chigozi', 'Nonso', 'chinons34@gamil.com', '123456', '+24345552373', '4, PTI Road', 'Warri', 'Delta', '3578478')

-- insert into users
INSERT INTO users
(id, first_name, last_name, email, password, phone_number, address, city, state, postal_code)
values (6, 'Gideon', 'Gizeric', 'gizgid23@gamil.com', '123456', '+24345789373', '7, Ring Road', 'Benin', 'Edo', '3572378')

-- insert into users
INSERT INTO users
(id, first_name, last_name, email, password, phone_number, address, city, state, postal_code)
values (7, 'Paul', 'Okolo', 'poko12@gamil.com', '123456', '+24344289373', '9, Jagua Street', 'Benin', 'Edo', '3572378')

-- insert into admin
INSERT INTO admin
(id, name, role, created_at, user_id)
values (1, 'Sen Samie', 'SuperAdmin', now(), 1)

-- insert into admin
INSERT INTO admin
(id, name, role, created_at, user_id)
values (2, 'Kelvin Chukwudi', 'Moderator', now(), 2)

-- select all products
select * from products

-- select all users
select * from users

-- select all products based on specified category
select * from products
join product_categories on products.id = product_categories.product_id
where product_categories.category_id = 1;

-- select all products based on specified category
select products.id, name, size, avaliability from products
join product_categories on products.id = product_categories.product_id
where product_categories.category_id = 3;

-- select all users who are not admins
select * from users
left join admin on users.id = user_id 
where admin.user_id is NULL

-- select all users who are admins based on columns
select name, role, email, phone_number, user_id from admin 
join users on admin.user_id = users.id

-- update a product
update products 
set name = 'Bed'
where id = 10;

-- update a user
update users 
set email = 'gideongiz12@gmail.com'
where id = 6;

-- combined update of product and user based on id
update products, users 
set name = 'Bed Sheet', address = '12, Stadium Road'
where products.id = 10 and users.id = 6;

-- delete a product
delete from products 
where id = 11;

-- delete a user
delete from users 
where id = 7;

-- delete a product
delete from products 
where id = 10;

-- delete a user
delete from users 
where id = 6;

