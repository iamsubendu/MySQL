-- DDL (Data Definition Language)
-- Commands: CREATE, ALTER, DROP, TRUNCATE, RENAME

-- CREATE
-- Purpose: Creates new database objects (tables, databases, indexes)
-- Real Scenario: Setting up a new e-commerce database

CREATE DATABASE IF NOT EXISTS test;
-- to create database schema
-- only create if not exist to avoid error

CREATE DATABASE IF NOT EXISTS record_company;

USE record_company;
-- using the database created for further operations

CREATE TABLE bands(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL ,
  PRIMARY KEY (id)
);
-- NOT NULL -> so undefined data can't be recorded
-- PRIMARY KEY -> primary identifying column for the table & it must be unique

CREATE TABLE albums (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id),
    INDEX idx_band_id (band_id)  -- Adding an index on band_id
);
-- FOREIGN KEY -> to add reference from another table
-- Indexing -> -- Indexes speed up performance by either ordering the data on 
-- disk so it's quicker to find your result or, telling the SQL engine where 
-- to go to find your data.

CREATE TABLE Products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  category VARCHAR(50),
  stock_quantity INT DEFAULT 0,
  created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE student2(
	id INT PRIMARY KEY,
    name VARCHAR(50) DEFAULT "Shyam",
    city VARCHAR(50) DEFAULT "Hyderabad",
    age INT NOT NULL CHECK (age >=18)
);

SHOW DATABASES; 
-- show databases

SHOW TABLES; 
-- show tables

DESCRIBE history;
-- In SQL, the DESCRIBE statement (or its shorthand DESC) is used to provide 
-- information about the structure of a database table. It returns details 
-- about the columns in the specified table, including their names, data 
-- types, nullability, and other attributes.
