-- Create tables with "pqbs" prefix

-- Table 1
CREATE TABLE pqbs_users (
    user_id serial PRIMARY KEY,
    username VARCHAR (50) NOT NULL,
    email VARCHAR (100) NOT NULL
);

-- Table 2
CREATE TABLE pqbs_products (
    product_id serial PRIMARY KEY,
    product_name VARCHAR (100) NOT NULL,
    price numeric(10, 2) NOT NULL
);

-- Table 3
CREATE TABLE pqbs_orders (
    order_id serial PRIMARY KEY,
    user_id INT REFERENCES pqbs_users(user_id),
    order_date DATE NOT NULL,
    total_amount numeric(10, 2) NOT NULL
);

-- Add more tables with the "pqbs" prefix as needed