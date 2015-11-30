/* Select the name and price of the cheapest product. */

SELECT Name, MIN(Price) AS [Cheapest Product]
	FROM Products