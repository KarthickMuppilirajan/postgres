-- Create tables with "pqbs" prefix

-- Table 1
CREATE TABLE pqbs_users (
    user_id serial PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Table 2
CREATE TABLE pqbs_products (
    product_id serial PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price numeric(10, 2) NOT NULL
);

-- Table 3
CREATE TABLE pqbs_orders (
    order_id serial PRIMARY KEY,
    user_id INT REFERENCES pqbs_users(user_id),
    order_date DATE NOT NULL,
    total_amount numeric(10, 2) NOT NULL
);

-- Table 4
CREATE TABLE pqbs_categories (
    category_id serial PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- Table 5
CREATE TABLE pqbs_reviews (
    review_id serial PRIMARY KEY,
    product_id INT REFERENCES pqbs_products(product_id),
    user_id INT REFERENCES pqbs_users(user_id),
    review_text TEXT
);

-- Table 6
CREATE TABLE pqbs_addresses (
    address_id serial PRIMARY KEY,
    user_id INT REFERENCES pqbs_users(user_id),
    street_address VARCHAR(150) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(2) NOT NULL,
    postal_code VARCHAR(10) NOT NULL
);

-- Table 7
CREATE TABLE pqbs_orders_items (
    order_item_id serial PRIMARY KEY,
    order_id INT REFERENCES pqbs_orders(order_id),
    product_id INT REFERENCES pqbs_products(product_id),
    quantity INT NOT NULL
);

-- Table 8
CREATE TABLE pqbs_transactions (
    transaction_id serial PRIMARY KEY,
    order_id INT REFERENCES pqbs_orders(order_id),
    transaction_date TIMESTAMP NOT NULL,
    amount numeric(10, 2) NOT NULL
);

-- Table 9
CREATE TABLE pqbs_employees (
    employee_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL
);

-- Table 10
CREATE TABLE pqbs_departments (
    department_id serial PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Add more tables with the "pqbs" prefix and ALTER TABLE statements as needed