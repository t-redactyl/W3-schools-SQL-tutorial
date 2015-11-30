/* Select the average price of each manufacturer's products, showing the manufacturer's name. */

SELECT Manufacturers.Name AS Manufacturer, AVG(Products.Price) AS [Average Price]
	FROM Manufacturers, Products
	WHERE Manufacturers.Code = Products.Manufacturer
	GROUP BY Manufacturers.Name