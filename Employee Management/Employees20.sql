/* Delete from the table all employees who work in departments with a budget greater than or equal to $60,000. */

DELETE FROM Employees
  WHERE Department IN
  (
    SELECT Code FROM Departments
     WHERE Budget >= 60000
  );