/* Select all the data of employees, including each employee's department's data. */

SELECT * FROM Employees
	INNER JOIN Departments
	ON Employees.Department = Departments.Code