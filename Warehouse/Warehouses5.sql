/* Select the warehouse code and the average value of the boxes in each warehouse. */

SELECT Warehouse, AVG(Value) FROM Boxes
	GROUP BY Warehouse