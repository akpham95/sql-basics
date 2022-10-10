/* 1.List all employee first and last names only that live in Calgary.

 2. Find the birthdate for the youngest employee.

 3. Find the birthdate for the oldest employee.

 4. Find everyone that reports to Nancy Edwards (use the ReportsTo column). 
 * You will need to query the employee table to find the id for Nancy Edwards

 5.Count how many people live in Lethbridge.

*/

/* 1. */
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

/* 2. */
SELECT MIN(birthdate) FROM employee;

/* 3. */
SELECT MAX(birthdate) FROM employee;

/* 4. */
SELECT * FROM employee WHERE reports_to = 2;

/* 5. */
SELECT COUNT (*) FROM employee WHERE city = 'Lethbridge;'




