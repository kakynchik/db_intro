CREATE DATABASE academy;
go
USE Academy;
go
CREATE TABLE Teachers
(
    id         INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name  VARCHAR(50),
    salary     DECIMAL(10, 2),
    hire_date  DATE
);
go
CREATE TABLE Groups
(
    id         INT IDENTITY (1,1) PRIMARY KEY,
    group_name VARCHAR(50)
);
go
CREATE TABLE Faculties
(
    id           INT IDENTITY (1,1) PRIMARY KEY,
    faculty_name VARCHAR(100)
);
go
CREATE TABLE Departments
(
    id              INT IDENTITY (1,1) PRIMARY KEY,
    department_name VARCHAR(100),
    faculty_id      INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculties (id)
);
go


use master;
drop DATABASE academy;
go