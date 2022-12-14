
DROP TABLE IF EXISTS  Cart_product  CASCADE;
DROP TABLE IF EXISTS  Orders  CASCADE;
DROP TABLE IF EXISTS  Order_status  CASCADE;
DROP TABLE IF EXISTS  Carts  CASCADE;
DROP TABLE IF EXISTS  Products  CASCADE;
DROP TABLE IF EXISTS  Categories  CASCADE;
DROP TABLE IF EXISTS  Users  CASCADE;

CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255),
    first_name VARCHAR(256),
    last_name VARCHAR(255),
    middle_name VARCHAR(255),
    is_start SMALLINT,
    country VARCHAR(255),
    city VARCHAR(256),
    address TEXT
);

CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    category_title VARCHAR(255),
    category_description TEXT
);

CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_title VARCHAR(255),
    product_description TEXT,
    in_stock INTEGER,
    price FLOAT,
    slug VARCHAR(45),
    category_id INTEGER REFERENCES Categories
);

CREATE TABLE Carts (
    cart_id SERIAL PRIMARY KEY,
    Users_user_id INTEGER REFERENCES Users,
    subtotal DECIMAL,
    total DECIMAL,
    timestamp TIMESTAMP(2)
);

CREATE TABLE Order_status (
    order_status_id SERIAL PRIMARY KEY,
    status_name VARCHAR(255)
);

CREATE TABLE Orders(
    order_id SERIAL PRIMARY KEY,
    Carts_cart_id INTEGER REFERENCES Carts,
    Order_status_order_status_id INTEGER REFERENCES Order_status,
    shipping_total DECIMAL,
    total DECIMAL,
    created_at TIMESTAMP(2),
    updated_at TIMESTAMP(2)
);

CREATE TABLE Cart_product (
    carts_cart_id INTEGER REFERENCES Carts,
    products_product_id INTEGER REFERENCES Products
);

copy Users from '/var/tmp/users.csv' delimiter ',' CSV;
copy categories from '/var/tmp/categories.csv' delimiter ',' CSV;
copy Products from '/var/tmp/products.csv' delimiter ',' CSV;
copy Carts from '/var/tmp/carts.csv' delimiter ',' CSV;
copy Order_status from '/var/tmp/order_statuses.csv' delimiter ',' CSV;
copy Orders from '/var/tmp/orders.csv' delimiter ',' CSV;
copy Cart_product from '/var/tmp/cart_products.csv' delimiter ',' CSV;
