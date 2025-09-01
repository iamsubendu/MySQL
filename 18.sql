-- Normalization is a fundamental concept in relational database design that aims to organize data to 
-- reduce redundancy and improve data integrity. Here’s a detailed overview of why normalization is 
-- important, which keys to consider during normalization, and the types of normalization forms.

-- =================================================================================================

-- Why Use Normalization?

-- Reduce Data Redundancy: Normalization minimizes the duplication of data across tables, which helps save 
-- storage space and maintain consistency.

-- Improve Data Integrity: By organizing data into related tables, normalization helps ensure that data 
-- is accurate and consistent. Changes to data need to be made in only one place.

-- Avoid Anomalies: Normalization helps prevent various types of anomalies:

-- Insertion Anomalies: Difficulty in adding data due to missing other data.

-- Update Anomalies: Inconsistencies that arise when data is updated in one place but not in others.

-- Deletion Anomalies: Loss of important data when a record is deleted.

-- Facilitate Maintenance: A well-normalized database is easier to maintain and modify, as changes to the 
-- structure or data can be made with minimal impact on the overall system.

-- Enhance Query Performance: While normalization can sometimes lead to more complex queries due to the need 
-- for JOINs, it can also improve performance by reducing the amount of data that needs to be processed.

-- =================================================================================================

-- Which Keys to Choose for Normalization

-- Primary Keys:
-- Every table should have a primary key that uniquely identifies each record. This is crucial for establishing 
-- relationships between tables.

-- Foreign Keys:
-- Foreign keys are used to establish relationships between tables. They reference the primary key of another table, 
-- ensuring referential integrity.

-- Candidate Keys:
-- These are columns that can uniquely identify a record in a table. When designing a normalized database, you may 
-- choose one of the candidate keys as the primary key.

-- Composite Keys:
-- In some cases, a combination of two or more columns may be needed to uniquely identify a record. This is known 
-- as a composite key.

-- =================================================================================================

-- Let's assume we have a denormalized table called StudentCourses:

CREATE TABLE StudentCourses (
    StudentID INT,
    StudentName VARCHAR(100),
    CourseID INT,
    CourseName VARCHAR(100),
    InstructorName VARCHAR(100),
    InstructorEmail VARCHAR(100)
);

-- Inserting Sample Data

INSERT INTO StudentCourses (StudentID, StudentName, CourseID, CourseName, InstructorName, InstructorEmail) VALUES
(1, 'Alice', 101, 'Mathematics', 'Dr. Smith', 'smith@example.com'),
(1, 'Alice', 102, 'Physics', 'Dr. Johnson', 'johnson@example.com'),
(2, 'Bob', 101, 'Mathematics', 'Dr. Smith', 'smith@example.com'),
(2, 'Bob', 103, 'Chemistry', 'Dr. Brown', 'brown@example.com'),
(3, 'Charlie', 102, 'Physics', 'Dr. Johnson', 'johnson@example.com');


-- First Normal Form (1NF)
-- The table is already in 1NF since all values are atomic. If we had a column with multiple 
-- values (like phone numbers), we would need to split it.

-- Second Normal Form (2NF)
-- To achieve 2NF, we need to separate the data into Students, Courses, and Enrollments tables.

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    InstructorName VARCHAR(100),
    InstructorEmail VARCHAR(100)
);

CREATE TABLE Enrollments (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students (StudentID, StudentName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO Courses (CourseID, CourseName, InstructorName, InstructorEmail) VALUES
(101, 'Mathematics', 'Dr. Smith', 'smith@example.com'),
(102, 'Physics', 'Dr. Johnson', 'johnson@example.com'),
(103, 'Chemistry', 'Dr. Brown', 'brown@example.com');

INSERT INTO Enrollments (StudentID, CourseID) VALUES
(1, 101),
(1, 102),
(2, 101),
(2, 103),
(3, 102);

-- Third Normal Form (3NF)
-- To achieve 3NF, we need to separate the Instructors into their own table to eliminate 
-- transitive dependencies.

CREATE TABLE Instructors (
    InstructorName VARCHAR(100) PRIMARY KEY,
    InstructorEmail VARCHAR(100)
);

INSERT INTO Instructors (InstructorName, InstructorEmail) VALUES
('Dr. Smith', 'smith@example.com'),
('Dr. Johnson', 'johnson@example.com'),
('Dr. Brown', 'brown@example.com');

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    InstructorName VARCHAR(100),
    FOREIGN KEY (InstructorName) REFERENCES Instructors(InstructorName)
);

-- Fourth Normal Form (4NF)
-- If we want to add prerequisites for courses, we can create a CoursePrerequisites table.

CREATE TABLE CoursePrerequisites (
    CourseID INT,
    PrerequisiteCourseID INT,
    PRIMARY KEY (CourseID, PrerequisiteCourseID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (PrerequisiteCourseID) REFERENCES Courses(CourseID)
);

Copy code
INSERT INTO CoursePrerequisites (CourseID, PrerequisiteCourseID) VALUES
(102, 101),  -- Physics requires Mathematics
(103, 101);  -- Chemistry requires Mathematics