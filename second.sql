-- This script creates a database and several tables for a practical exercise.
/*
CREATE DATABASE IF NOT EXISTS Practical01DB
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;



USE Practical01DB;

-- 1. Customers Table
CREATE TABLE IF NOT EXISTS Customers (
  CustomerID INT  UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CustomerName VARCHAR(255) UNIQUE NOT NULL,
  Age INT UNSIGNED NOT NULL
);

-- 2. Products Table
CREATE TABLE IF NOT EXISTS Products (
  ProductID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProductName VARCHAR(255) NOT NULL,
  UnitPrice DECIMAL(10,2) NOT NULL
);

-- 3. Orders Table
CREATE TABLE IF NOT EXISTS Orders (
  OrderID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  OrderName VARCHAR(255) NOT NULL,
  OrderTime TIME NOT NULL,
  TotalAmount DECIMAL(10,3) UNSIGNED NOT NULL,
  CustomerID INT UNSIGNED NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
);

-- 4. OrderDetails Table (many-to-many between Orders and Products)
CREATE TABLE IF NOT EXISTS OrderDetails (
  OrderDetailID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  OrderID INT UNSIGNED NOT NULL,
  ProductID INT UNSIGNED NOT NULL,
  Quantity INT UNSIGNED NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
    ON DELETE CASCADE,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    ON DELETE CASCADE
);

CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  Name VARCHAR(100),
  Status VARCHAR(20) DEFAULT 'Active'
);



CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  Name VARCHAR(100),
  Status ENUM('Active', 'Inactive', 'On Leave') DEFAULT 'Active'
);



USE practical01db;
SHOW TABLES;
DESCRIBE TABLE Customers;
EXPLAIN SELECT * FROM Customers;

ALTER TABLE Customers
ADD COLUMN Email VARCHAR(255);

SHOW TABLES LIKE  'Customers';
DESCRIBE TABLE Customers;

SELECT * FROM Customers;

-- ALTER TABLE Customers
-- MODIFY COLUMN CustomerID INT UNSIGNED NOT NULL;
-- DESCRIBE TABLE Customers;
-- ALTER TABLE Customers
INSERT INTO Customers (CustomerName)
VALUES ('Alice');
-- Example: Updating just the Email column

UPDATE Customers
SET Email = 'newemail@example.com'
WHERE CustomerID = 1;

-- Insert row with only Age column (others NULL/default)
INSERT INTO Customers (Age) VALUES (30);


 INSERT INTO Customers (CustomerName, Age, Email) 
 VALUES 
   ('werwer', 33, 'ramesh@gnail.com'),
   ('Ankit', 23, 'ankit@gnail.com');

 INSERT INTO Customers (CustomerID) VALUES (010102);

ALTER TABLE Customers
MODIFY COLUMN CustomerName VARCHAR(355) NOT NULL DEFAULT 'Unknown';

ALTER TABLE Customers
MODIFY COLUMN Age INT UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(355) NOT NULL DEFAULT 'Unknown';
  
SELECT * FROM Customers;

ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(255) NOT NULL UNIQUE;

ANALYZE TABLE Customers;

OPTIMIZE TABLE Customers;SELECT `customers`.`CustomerID`,
    `customers`.`CustomerName`,
    `customers`.`Age`,
    `customers`.`Email`
FROM `practical01db`.`customers`;

SELECT `customers`.`CustomerID`,
    `customers`.`CustomerName`,
    `customers`.`Age`,
    `customers`.`Email`
FROM `practical01db`.`customers`;







CREATE TABLE `customers` (
  `CustomerID` int unsigned NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(355) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `Age` int unsigned NOT NULL,
  `Email` varchar(355) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerID` (`CustomerID`),
  UNIQUE KEY `CustomerName` (`CustomerName`)
) ENGINE=InnoDB AUTO_INCREMENT=10112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/
SHOW TABLES FROM Practical01DB;
