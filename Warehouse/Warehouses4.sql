/* Select the average value of all the boxes. */

SELECT AVG(Value) FROM Boxes;

SELECT Contents, AVG(Value) FROM Boxes
	GROUP BY Contents;