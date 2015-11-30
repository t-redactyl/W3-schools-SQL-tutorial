/* Select the name of each manufacturer along with the name and price of its most expensive product. */

SELECT Manufacturers.Name, Products.Name, MAX(Products.Price)
	FROM Manufacturers
	INNER JOIN Products
	ON Manufacturers.Code = Products.Manufacturer
	GROUP BY Manufacturers.Name