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
    is_redeemed BOOLEAN DEFAULT 0,
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

INSERT INTO coffee_orders(is_redeemed) VALUES (0);

INSERT INTO customers (name, email, phone)
VALUES ('Monica', 'monica@friends.show', 2222222222),
('Phoebe', 'phoebe@friends.show', 3333333333);

UPDATE customers
SET points = points+3
WHERE phone = 3333333333;
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);

UPDATE customers
SET points = points+4
WHERE phone=1111111111;
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);

UPDATE customers
SET points = points+4
WHERE phone=2222222222;
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);
INSERT INTO coffee_orders(is_redeemed) VALUES (0);

SELECT points FROM customers WHERE phone = 2222222222;

SELECT points FROM customers WHERE phone = 1111111111;

UPDATE customers SET points = 0 WHERE phone = 1111111111;
INSERT INTO coffee_orders(is_redeemed) VALUES (1);

INSERT INTO customers (name, email)
VALUES
('joey', 'joey@friends.show'),
('Chandler', 'Chandler@friends.show'),
('Ross', 'Ross@friends.show');

UPDATE customers
SET points = points+6
WHERE email = 'Ross@friends.show';

INSERT INTO coffee_orders (is_redeemed) VALUES (0);
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

DELETE FROM coffee_orders WHERE id = 19;
DELETE FROM coffee_orders WHERE id = 18;

UPDATE customers SET points = points-2 WHERE email = 'Ross@friends.show';

UPDATE customers
SET email = 'p_as_in_phoebe@friends.show'
WHERE email = 'phoebe@friends.show';

-- UPDATE friends
-- SET last_name = 'Blue'
-- WHERE first_name = 'Amy' AND last_name = 'Pond';
