CREATE TABLE products (
    id            SERIAL        PRIMARY KEY,
    name          VARCHAR(200)  NOT NULL,
    price_cents   INTEGER       NOT NULL,
    stock_qty     INTEGER       NOT NULL DEFAULT 0,
    created_at    TIMESTAMPTZ   NOT NULL DEFAULT now()
);

INSERT INTO products (name, price_cents, stock_qty, created_at) VALUES
    ('Beginner SQL Handbook',        1999, 120, '2024-01-10 10:00:00+09'),
    ('PostgreSQL Cheat Sheet Poster',  999, 300, '2024-01-20 10:00:00+09'),
    ('CodeBridge Hoodie',             4500,   0, '2024-02-05 10:00:00+09'),
    ('Mechanical Keyboard',           8999,  15, '2024-02-25 10:00:00+09'),
    ('Desk Lamp',                     2499,  60, '2024-03-10 10:00:00+09');

-- ১. categories, আর products-কে সেগুলোর সাথে যুক্ত করা
CREATE TABLE categories (
    id     SERIAL       PRIMARY KEY,
    name   VARCHAR(100) NOT NULL
);

INSERT INTO categories (name) VALUES
    ('Books'), ('Study Aids'), ('Gear');

ALTER TABLE products ADD COLUMN category_id INTEGER REFERENCES categories(id);

UPDATE products SET category_id = 1 WHERE id = 1;
UPDATE products SET category_id = 2 WHERE id = 2;
UPDATE products SET category_id = 3 WHERE id IN (3, 4, 5);

-- ২. orders, প্রতি row-এ একটা order, একজন user-এর সাথে যুক্ত
CREATE TABLE orders (
    id            SERIAL        PRIMARY KEY,
    user_id       INTEGER       NOT NULL REFERENCES users(id),
    status        VARCHAR(20)   NOT NULL DEFAULT 'pending',
    created_at    TIMESTAMPTZ   NOT NULL DEFAULT now()
);

INSERT INTO orders (id, user_id,status,created_at) VALUES
    (1, 1, 'completed', '2024-04-01 10:00:00+09'),
    (2, 2, 'completed', '2024-04-03 11:30:00+09'),
    (3, 1, 'pending',   '2024-04-10 09:15:00+09'),
    (4, 4, 'completed', '2024-04-12 14:00:00+09'),
    (5, 6, 'cancelled', '2024-04-15 16:45:00+09');

-- ৩. order_items, একটা order-এর ভেতরে প্রতিটা প্রোডাক্টের জন্য এক row

CREATE TABLE order_items (
    id                 SERIAL    PRIMARY KEY,
    order_id           INTEGER   NOT NULL REFERENCES orders(id),
    product_id         INTEGER   NOT NULL REFERENCES products(id),
    quantity           INTEGER   NOT NULL DEFAULT 1,
    unit_price_cents   INTEGER   NOT NULL
);

INSERT INTO order_items (order_id, product_id, quantity, unit_price_cents) VALUES
    (1, 1, 1, 1999),
    (1, 2, 2,  999),
    (2, 4, 1, 8999),
    (3, 5, 1, 2499),
    (4, 1, 1, 1999),
    (4, 3, 1, 4500),
    (5, 2, 1,  999);