CREATE TABLE products (
    id            SERIAL        PRIMARY KEY,
    name          VARCHAR(200)  NOT NULL,
    price_cents   INTEGER       NOT NULL,
    stock_qty     INTEGER       NOT NULL DEFAULT 0,
    created_at    TIMESTAMPTZ   NOT NULL DEFAULT now()
);