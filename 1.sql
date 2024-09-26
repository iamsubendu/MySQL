CREATE DATABASE test;--  to create database schema

DROP DATABASE test;--  to delete database schema

CREATE DATABASE record_company;

USE record_company;--  using the database created for further operations

CREATE TABLE test( test_column INT );-- creating a table with a column specifying its dataType

-- if we want to add one more column and if we change the above syntax directly, we will loose whole data

ALTER TABLE test ADD another_column VARCHAR(255);-- Adding another columnn in previous table

DROP TABLE test;-- delete table

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
