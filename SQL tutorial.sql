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









