/* Select all the data from the products, including all the data for each product's manufacturer. */

SELECT * FROM Products
	LEFT JOIN Manufacturers
	ON Products.Manufacturer = Manufacturers.Code