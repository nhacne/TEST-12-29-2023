CREATE DATABASE EmployeeDB
GO

USE EmployeeDB
GO

CREATE TABLE Department (
	Departld INT PRIMARY KEY,
	DepartName VARCHAR (50) NOT NULL,
	Description VARCHAR (100) NOT NULL,
);

INSERT INTO Department VALUES (001, 'Pham Minh Nhat', 'Sinh Vien')
INSERT INTO Department VALUES (002, 'Pham Thanh Long', 'Sinh Vien')
INSERT INTO Department VALUES (003, 'Nguyen Minh Nhat', 'Sinh Vien')


SELECT * FROM Department;
DROP TABLE Department;

CREATE TABLE Employee (
	EmpCode CHAR (6) PRIMARY KEY,
	FirstName VARCHAR (30) NOT NULL,
	LastName VARCHAR (30) NOT NULL,
	Birthday SMALLDATETIME NOT NULL, 
	Gender BIT DEFAULT 1,
	Address VARCHAR (100),
	DepartID INT,
	Salary MONEY,
);

INSERT INTO Employee VALUES (001, 'Nguyen', 'Thanh Long','2005/10/03',1, 'ABC', 001, 1000)
INSERT INTO Employee VALUES (002, 'Nguyen', 'Thanh Hung','2005/03/10',1, 'ABC', 002, 1000)
INSERT INTO Employee VALUES (003, 'Nguyen', 'Thanh Hoa','2003/02/05',1, 'ABC', 003, 1000)

UPDATE Employee 
SET Salary = Salary * 1.1
SELECT * FROM Employee;
DROP TABLE Employee;