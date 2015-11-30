/* Select the product name, price, and manufacturer name of all the products. */

SELECT Products.Name AS [Product Name], Products.Price, 
	Manufacturers.Name AS [Manufacturer Name]
	FROM Products, Manufacturers
	WHERE Products.Code = Manufacturers.Code