CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name TEXT NOT NULL,
    customer_email TEXT NOT NULL UNIQUE
);
CREATE TABLE products (
    product_code TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    category_name TEXT NOT NULL
);
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    order_date TEXT NOT NULL,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_items (
    order_id INTEGER,
    product_code TEXT,
    unit_price_paid REAL NOT NULL,
    quantity INTEGER NOT NULL,
    PRIMARY KEY (order_id, product_code),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_code) REFERENCES products(product_code)
);