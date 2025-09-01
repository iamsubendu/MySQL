-- DML (Data Manipulation Language)
-- Commands: INSERT, UPDATE, DELETE, MERGE
-- Purpose: Manipulate data within tables

-- INSERT
-- Purpose: Adds new records to a table
-- Real Scenario: Adding new products to inventory

INSERT INTO bands (name) 
VALUES 
('Ram');

INSERT INTO bands (name) 
VALUES 
('Laxman'),('Bharath'),('Shatrughna');
-- The round brackets are must for entering multiple values

INSERT INTO Products (name, price, category, stock_quantity)
VALUES 
('New Product', 19.99, 'Category1', 100);

INSERT INTO Products (name, price, category, stock_quantity) 
VALUES 
('iPhone 15', 999.99, 'Electronics', 50),
('MacBook Pro', 1499.99, 'Electronics', 25),
('AirPods Pro', 249.99, 'Electronics', 100);