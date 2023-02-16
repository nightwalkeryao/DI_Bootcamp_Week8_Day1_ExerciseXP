-- 1. Create a database called public

-- DROP DATABASE IF EXISTS public;
CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
-- 2. Add two tables
CREATE TABLE items(
	id SERIAL PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	price INT NOT NULL
);

CREATE TABLE customers(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL
);

-- 2.1 Add the following items to the items table:
INSERT INTO items(name, price) VALUES
	('Small Desk', 100),
	('Large desk', 300),
	('Fan', 80);
	
-- 2.2 Add 5 new customers to the customers table:
INSERT INTO customers(first_name, last_name) VALUES 
	('Greg', 'Jones'),
	('Sandra', 'Jones'),
	('Scott', 'Scott'),
	('Trevor', 'Green'),
	('Melanie', 'Johnson')
	
-- 3. Use SQL to fetch the following data from the database
-- 3.1 All the items.
SELECT * FROM items;

-- 3. 2 All the items with a price above 80 (80 not included).
SELECT * FROM items WHERE price > 80;

-- 3.3 All the items with a price below 300. (300 included)
SELECT * FROM items WHERE price <= 300;

-- 3.4 All customers whose last name is ‘Smith’ (What will be your outcome?).
SELECT * FROM customers WHERE last_name = 'Smith';
-- Outcome will be an empty set since there is no customer with that last name

-- 3.5 All customers whose last name is ‘Jones’.
SELECT * FROM customers WHERE last_name = 'Jones';

-- 3.6 All customers whose firstname is not ‘Scott’.
SELECT * FROM customers WHERE first_name <> 'Scott';
