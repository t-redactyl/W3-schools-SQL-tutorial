/* Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11. Add an employee 
called "Mary Moore" in that department, with SSN 847-21-9811. */

INSERT INTO Departments (Code, Budget, Name) 
	VALUES (11, 40000, 'Quality Assurance');
INSERT INTO Employees  (Name, LastName, SSN, Department)
	VALUES ('Mary', 'Moore', '847219811', 11);