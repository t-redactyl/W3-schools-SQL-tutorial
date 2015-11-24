# SQL tutorial

# SELECT
SELECT CustomerName, City FROM Customers;
SELECT * FROM Customers;

# SELECT DISTINCT
# Return only distinct values
SELECT DISTINCT City FROM Customers;

# WHERE
SELECT * FROM Customers
WHERE Country = 'Mexico';

# Text vs Numeric Fields
# Text fields should be in quotes, numeric should not
SELECT * FROM Customers
WHERE CustomerID = 1;

# AND & OR Operators
SELECT * FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin';

SELECT * FROM Customers
WHERE City = 'Berlin'
OR City = 'München';

SELECT * FROM Customers
WHERE Country = 'Germany'
AND (City = 'Berlin' OR 'City' = 'München');

# ORDER BY
SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC;

SELECT * FROM Customers
ORDER BY Country, CustomerName

# Ascending and descending sort by several columns
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

# INSERT INTO
# New row
INSERT INTO Customers (CustomerName, ContactName, Address, City,
PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger',
'4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

# UPDATE
# Changes values in the database
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Hamburg'
WHERE CustomerName = 'Alfreds Futterkiste';

# DELETE
# Gets rid of rows in a table
DELETE FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste' 
AND ContactName = 'Maria Anders';

# Delete all data
DELETE * FROM Customers;
# Or
DELETE FROM Customers;

# SELECT TOP
# Specify the number of records to return
SELECT *
FROM Persons
LIMIT 5;

SELECT *
FROM Persons
WHERE ROWNUM <= 5;

SELECT TOP 2 * FROM Customers;

SELECT TOP 50 PERCENT * FROM Customers;

# LIKE
# Search for specified pattern in a column
# % is a wildcard
SELECT * FROM Customers
WHERE City LIKE 's%';

SELECT * FROM Customers
WHERE City LIKE '%s';

SELECT * FROM Customers
WHERE Country LIKE '%land%';

SELECT * FROM Customers
WHERE Country NOT LIKE '%land%';

# SQL wildcards
# % = zero or more characters
# _ = single character
# [charlist] = sets and ranges of characters to match
# [^charlist] OR [!charlist] = characters to NOT match

SELECT * FROM Customers
WHERE City LIKE 'ber%';

SELECT * FROM Customers
WHERE City LIKE '%es%';

SELECT * FROM Customers
WHERE City LIKE '_erlin';

# Starting with charlist
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

SELECT * FROM Customers
WHERE City LIKE '[a-c]%';

SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';

SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';

# IN
# Multiple values in WHERE clause

SELECT * FROM Customers
WHERE City IN ('Paris', 'London');

# BETWEEN
# Selects values within a range (numbers, texts or dates)
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

# NOT BETWEEN
# Values outside the range
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE (Price BETWEEN 10 AND 20)
AND NOT CategoryID IN (1, 2, 3);

# With text

SELECT * FROM Products
WHERE ProductName BETWEEN 'C' AND 'M';

SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'C' and 'M';

# With dates
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/04/1996# AND #07/09/1996#

# AS
# Alias to temporarily rename variable
SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers

# Combining columns using AS
SELECT CustomerName, Address+', '+City+', '+PostalCode+', '+Country AS 
Address
FROM Customers;

# Table aliases
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers as c, Orders as o
WHERE c.CustomerName = "Around the Horn"
AND c.CustomerID = o.CustomerID;

# JOIN
# Combines data from tables based on a common field between them
# INNER JOIN: Returns all rows when there is at least one match in BOTH tables
# LEFT JOIN: Return all rows from the left table, and the matched rows 
# from the right table
# RIGHT JOIN: Return all rows from the right table, and the matched rows 
# from the left table
# FULL JOIN: Return all rows when there is a match in ONE of the tables

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

# INNER JOIN
SELECT Customers.CustomerName, Orders.OrderID











