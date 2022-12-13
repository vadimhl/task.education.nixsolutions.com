create table Users (
    user_id SERIAL primary key,
    emal VARCHAR(255),
    password VARCHAR(255),
    first_name VARCHAR(256),
    last_name VARCHAR(255),
    middle_name VARCHAR(255),
    is_start TINYINT,
    country VARCHAR(255),
    city VARCHAR(256),
    address TEXT
)

create table Categories (
    category_id SERIAL primary key,
    category title VARCHAR(255)
    category_description TEXT
)

create table Products (
    product_id SERIAL primary key,
    product_title VARCHAR(255),
    product_description TEXT,
    in_stock INT,
    price FLOAT,
    slug VARCHAR(45),
    category_id integer REFERENCES Categories
)

create table Carts (
    cart_id SERIAL,
    Users_user_id integer REFERENCES Users,
    subtotal DECIMAL,
    total DECIMAL,
    timestamp TIMESTAMP(2)
)

create table Order_status (
    order_status_id SERIAL primary key,
    status_name VARCHAR(255)
)


create table Order(
    order_id SERIAL primary key,
    Carts_cart_id integer REFERENCES Carts,
    Order_status_order_status_id integer REFERENCES Order_status,
    shipping_total DECIMAL,
    total DECIMAL,
    created_at TIMESTAMP(2),
    updated_at TIMESTAMP(2)
)

create table Cart_product (
    carts_cart_id integer REFERENCES Carts,
    products_product_id integer REFERENCES Products
)


