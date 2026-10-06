CREATE DATABASE COURSE DB;
USE COURSE DB;

-- Create Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

-- Insert sample data into Course
INSERT INTO Course (CourseID, CourseName, Credits) VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);

-- Create Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert sample data into Enrollment
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);
