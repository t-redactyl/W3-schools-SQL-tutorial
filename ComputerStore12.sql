/* Select the average price of each manufacturer's products, showing only the manufacturer's code */

SELECT Manufacturer, AVG(Price) AS [Average Price]
	FROM Products
	GROUP BY Manufacturer