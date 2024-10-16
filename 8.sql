-- Cascading for Foreign Key

CREATE table student(
    id PRIMARY KEY,
    courseID INT,
    FOREIGN KEY(courseID) REFERENCES course(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- it will update/delete rows
-- the value on other table related to it