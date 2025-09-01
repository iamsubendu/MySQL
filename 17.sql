-- Indexing in SQL is a crucial technique used to enhance the performance of database queries. 
-- By creating indexes, you enable the database to quickly locate and access the data without 
-- scanning the entire table, which is especially beneficial as the size of the database grows.

-- =================================================================================================

-- Speed Up Data Retrieval: Indexes significantly reduce the time it takes to retrieve data by 
-- allowing the database to find rows more quickly.

-- Improved Query Performance: They enhance the performance of SELECT queries, especially those 
-- involving WHERE clauses, JOINs, and ORDER BY clauses.

-- Prevent Duplicate Entries: Unique indexes ensure that no duplicate values are entered in specified 
-- columns, maintaining data integrity.

-- Efficient Sorting and Grouping: Indexes can help in sorting and grouping records, making 
-- operations like ORDER BY and GROUP BY more efficient.

-- =================================================================================================

-- Which Keys to Choose for Indexing?

-- Primary Keys: Always index primary key columns as they uniquely identify each row in a table.

-- Foreign Keys: Index foreign key columns to speed up JOIN operations between tables.

-- Columns Frequently Used in WHERE Clauses: Index columns that are often used in search conditions 
-- to improve query performance.

-- Columns Used in Sorting: Index columns that are frequently used in ORDER BY clauses to enhance 
-- sorting performance.

-- Columns with High Selectivity: Choose columns with a high number of unique values for indexing, as 
-- they provide better performance benefits.

-- =================================================================================================

-- Clustered Index:

-- Stores the data rows in the table in the order of the index.
-- There can be only one clustered index per table, as the data can only be sorted in one way.
-- Automatically created when a primary key is defined.

CREATE TABLE Example (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Non-Clustered Index:

-- Creates a separate structure from the data rows that holds pointers back to the original table.
-- Multiple non-clustered indexes can be created on a single table.

CREATE INDEX idx_name ON Example(Name);

-- Unique Index:

-- Ensures that all values in the indexed column are unique.
-- Automatically created for primary keys.

CREATE UNIQUE INDEX idx_unique_name ON Example(Name);

-- Composite Index:

-- An index on two or more columns of a table.
-- Useful for queries that filter on multiple columns.

CREATE INDEX idx_composite ON Example(Name, ID);

-- Full-Text Index:

-- Used for searching large text fields efficiently.
-- Allows for complex queries against text data.

CREATE FULLTEXT INDEX idx_fulltext ON Example(Name);