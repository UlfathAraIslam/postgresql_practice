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