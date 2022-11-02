DROP TABLE IF EXISTS parties;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    departments VARCHAR(255),
    roles VARCHAR(255),
    relationships VARCHAR(255)
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    score NUMERIC(2, 2),
    employee_id INTEGER,
    FOREIGN KEY (employee_id)
    REFERENCES employees(id)
);

CREATE TABLE parties (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    site VARCHAR(10),
    guest_count INTEGER,
    guests TEXT
);

CREATE TABLE relationships (
    party1 INTEGER,
    FOREIGN KEY (party1);
    REFERENCES parties(id)
);

INSERT INTO employees (first_name, last_name, departments, roles)
VALUES
('Michael', 'Scott', 'Management', 'Regional Manager'),
('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager'),
('Jim', 'Halpert', 'Sales', 'Sales Representative'),
('Pam', 'Beesly', 'Reception', 'Receptionist'),
('Kelly', 'Kapoor', 'Product Oversight', 'Customer Service Representative'),
('Angela', 'Martin', 'Accounting', 'Head of Accounting'),
('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff');
