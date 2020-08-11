use master;
GO

create database EmployeeDb;
GO

use EmployeeDb;
GO

create SCHEMA Employee;
GO

create TABLE Employee.Department
(
    ID int not null IDENTITY(1, 1),
    [Name] NVARCHAR(50) not null,
    [Location] NVARCHAR(50) not null,
    CONSTRAINT PK_DeptId PRIMARY KEY (ID)
);

CREATE TABLE Employee.Employee
(
    ID int not null IDENTITY(1, 1),
    Firstname NVARCHAR(50) not null,
    LastName NVARCHAR(50) not null,
    SSN NVARCHAR(11) not null,
    DeptID int null,
    CONSTRAINT PK_EmployeeId PRIMARY KEY (ID),
    CONSTRAINT FK_DeptId FOREIGN KEY (DeptID) REFERENCES Employee.Department(ID)
);

create table Employee.EmpDetails
(
    ID int not null IDENTITY(1, 1),
    EmployeeID int not null,
    Salary money not null,
    Address1 NVARCHAR(50) not null,
    Address2 NVARCHAR(50) null,
    City NVARCHAR(50) not null,
    [State] NVARCHAR(50) not null,
    Country NVARCHAR(50) not null,
    CONSTRAINT PK_EmpDetailsId PRIMARY KEY (ID),
    CONSTRAINT FK_EmployeeId FOREIGN KEY (EmployeeID) REFERENCES Employee.Employee(ID)
);

insert into Employee.Department
    ([Name], [Location])
VALUES
    ('Marketing', 'West');

insert into Employee.Department
    ([Name], [Location])
VALUES
    ('Sales', 'Central');

insert into Employee.Department
    ([Name], [Location])
VALUES('IT', 'East')


insert into Employee.Employee
    (Firstname, LastName, ssn, DeptID)
VALUES
    ('Tina', 'Smith', '123-45-6789', 1);

insert into Employee.Employee
    (Firstname, LastName, ssn, DeptID)
VALUES
    ('John', 'Edwards', '123-45-6789', 2);

insert into Employee.Employee
    (Firstname, LastName, ssn, DeptID)
VALUES
    ('Sam', 'McDonald', '123-45-6789', 3);


insert into Employee.EmpDetails
    (EmployeeID, Salary, Address1, City, [State], Country)
VALUES
    (7, 50000, '1 Street Ave.', 'city', 'CA', 'USA')

insert into Employee.EmpDetails
    (EmployeeID, Salary, Address1, City, [State], Country)
VALUES
    (8, 50000, '1 Street Ave.', 'city', 'CA', 'USA')

insert into Employee.EmpDetails
    (EmployeeID, Salary, Address1, City, [State], Country)
VALUES
    (9, 50000, '1 Street Ave.', 'city', 'CA', 'USA')

