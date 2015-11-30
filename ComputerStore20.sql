/* Apply a 10% discount to all products with a price larger than or equal to $120. */

UPDATE Products
	SET Price = Price * .9
	WHERE Price >= 120