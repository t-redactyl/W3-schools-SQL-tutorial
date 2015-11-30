/* Select the names of manufacturer whose products have an average price larger than or equal to $150. */

SELECT Manufacturers.Name, AVG(Products.Price)
	FROM Manufacturers
	INNER JOIN Products
	ON Manufacturers.Code = Products.Manufacturer
	GROUP BY Manufacturers.Code
	HAVING AVG(Products.Price) >= 150