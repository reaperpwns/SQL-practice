-- Your code here

------------------------------
-- SET UP TABLE SCHEMAS
-- DROP TABLES IF THEY EXIST
------------------------------

DROP TABLE IF EXISTS coffee_orders;
DROP TABLE IF EXISTS customers;


CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40),
    phone INTEGER UNIQUE,
    email VARCHAR(255) UNIQUE,
    points INTEGER NOT NULL DEFAULT 5,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coffee_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    is_redeemed BOOLEAN DEFAULT 'not redeemed',
    ordered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

------------------------------
-- SEED DATA INTO TABLES
-- STRUCTURE QUERIES TO
-- SIMULATE CUSTOMER EVENTS
------------------------------

INSERT INTO customers (name, phone)
VALUES ('Rachel', 1111111111);

UPDATE customers
SET points = points+1
WHERE phone=1111111111;



-- UPDATE friends
-- SET last_name = 'Blue'
-- WHERE first_name = 'Amy' AND last_name = 'Pond';
