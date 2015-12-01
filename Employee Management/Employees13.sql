/* Select the departments with a budget larger than the average budget of all the departments. */

SELECT Name AS Department FROM Departments
	WHERE Budget >
	(
		SELECT AVG(Budget)
		FROM Departments
	);