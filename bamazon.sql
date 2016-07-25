CREATE DATABASE Bamazon

USE Bamazon;

CREATE TABLE Products(
id INT NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(75) NOT NULL,
DepartmentName VARCHAR(25) NOT NULL,
Price DECIMAL(5, 2) NOT NULL,
StockQuantity INT(10) NULL,
PRIMARY KEY (id));

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Gray Onassis Briefs', 'Underwear', '11.99', '500');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Black Onassis Briefs', 'Underwear', '11.99', '500');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Gray Onassis Boxers', 'Underwear', '11.99', '500');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Black Onassis Boxers', 'Underwear', '11.99', '500');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('100% Cotton Shorts', 'Outerwear', '29.99', '500');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Synthetic Blend Shorts', 'Outerwear', '24.99', '500');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Odd-smelling polo', 'Outerwear', '49.99', '500');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Rare Button-down, longsleeves', 'Outerwear', '79.99', '25');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Rare Button-down, shortsleeves', 'Outerwear', '69.99', '25');

INSERT INTO products (ProductName, DepartmentName, Price, StockQuantity) VALUES ('Magic Mocassins, Size 12', 'Footwear', '999.99', '1');

SELECT * FROM Products;

SELECT ProductName FROM Products WHERE id=2