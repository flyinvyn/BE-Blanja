CREATE TABLE
    category (
        id_category VARCHAR PRIMARY KEY,
        name_category VARCHAR(255)
    );

CREATE TABLE
    product (
        id_product VARCHAR PRIMARY KEY,
        name_product TEXT,
        price_product INT,
        description_product TEXT,
        stock_product INT,
        image_product VARCHAR(255),
        create at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        id_category VARCHAR,
        id_seller VARCHAR
    );

CREATE TABLE
    users (
        id_user VARCHAR(255) PRIMARY KEY,
        email_user VARCHAR(255),
        password_user VARCHAR(255),
        fullname_user VARCHAR(255),
        phone_number VARCHAR(255),
        role_user VARCHAR(255)
    );

CREATE TABLE
    address (
        id_address VARCHAR PRIMARY KEY,
        name_address VARCHAR(255),
        street_address TEXT,
        phone_address VARCHAR(255),
        postal_address VARCHAR(255),
        city_address VARCHAR(255),
        place_address VARCHAR(255),
        id_user VARCHAR(255)
    );

CREATE TABLE
    seller (
        id_seller VARCHAR(255) PRIMARY KEY,
        email_seller VARCHAR(255),
        phone_seller VARCHAR(255),
        name_seller VARCHAR(255),
        password_seller VARCHAR(255),
        description_seller TEXT,
        store_seller VARCHAR(255),
        role_seller VARCHAR(255)
    );

CREATE TABLE
    order_list (
        id_order VARCHAR PRIMARY KEY,
        quantity_order INT,
        date_order TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        id_product VARCHAR,
        id_user VARCHAR,
        Foreign Key (id_product) REFERENCES product(id_product)
        Foreign Key (id_user) REFERENCES users(id_user)
    );

SELECT product.*,category.name_category,seller.name_seller,seller.store_seller
FROM product
JOIN category ON product.id_category = category.id_category
JOIN seller ON product.id_seller = seller.id_seller;

SELECT order_list.*,product.*
FROM order_list
JOIN product ON order_list.id_product = product.id_product;
