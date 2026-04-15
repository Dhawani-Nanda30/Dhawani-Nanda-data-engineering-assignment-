CREATE TABLE users (
    user_id BIGINT PRIMARY KEY
);

CREATE TABLE categories (
    category_id BIGINT PRIMARY KEY,
    category_name VARCHAR(255)
);

CREATE TABLE products (
    product_id BIGINT PRIMARY KEY,
    category_id BIGINT
);

CREATE TABLE events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id BIGINT,
    product_id BIGINT,
    event_type TEXT,
    event_time TIMESTAMP,
    price FLOAT
);

CREATE INDEX idx_user ON events(user_id);
CREATE INDEX idx_product ON events(product_id);
CREATE INDEX idx_time ON events(event_time);
