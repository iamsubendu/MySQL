CREATE DATABASE IF NOT EXISTS test;
-- to create database schema
-- only create if not exist to avoid error

DROP DATABASE IF EXISTS test;--  to delete database schema
-- only drop if exist to avoid error

CREATE DATABASE IF NOT EXISTS record_company;

USE record_company;
-- using the database created for further operations

SHOW DATABASES; 
-- show databases

SHOW TABLES; 
-- show tables

CREATE TABLE test( test_column INT );
-- creating a table with a column specifying its dataType
-- if we want to add one more column and if we change the 
-- above syntax directly, we will loose whole data
ALTER TABLE test ADD another_column VARCHAR(255);
-- Adding another columnn in previous table

DROP TABLE IF EXIST test;-- delete table

CREATE TABLE bands(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL ,
    PRIMARY KEY (id)
);
-- NOT NULL -> so undefined data can't be recorded
-- PRIMARY KEY -> primary identifying column for the table & it must be unique

CREATE TABLE albums(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);
-- FOREIGN KEY -> to add reference from another table

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50) DEFAULT "Shyam",
    city VARCHAR(50) DEFAULT "Hyderabad",
    age INT NOT NULL,
    CONSTRAINT age_chek CHECK (age >=18 AND city="Hyderabad")
);

CREATE TABLE student2(
	id INT PRIMARY KEY,
    name VARCHAR(50) DEFAULT "Shyam",
    city VARCHAR(50) DEFAULT "Hyderabad",
    age INT NOT NULL CHECK (age >=18)
);

