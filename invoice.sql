/* 1. Count how many orders were made from the USA.

2. Find the largest order total amount.

3. Find the smallest order total amount.

4. Find all orders bigger than $5.

5. Count how many orders were smaller than $5.

6. Count how many orders were in CA, TX, or AZ (use IN).

7. Get the average total of the orders.

8. Get the total sum of the orders.

9. Update the invoice with an invoice_id of 5 to have a total order amount of 24.

10. Delete the invoice with an invoice_id of 1.
*/

/* 1. */
SELECT COUNT (*) FROM invoice WHERE billing_country = 'USA';

/* 2. */
SELECT MAX(total) FROM invoice;

/* 3. */
SELECT MIN(total) FROM invoice;

/* 4. */
SELECT * FROM invoice WHERE total > 5;

/* 5. */
SELECT COUNT (*) FROM invoice WHERE total < 5;

/* 6. */
SELECT COUNT (*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

/* 7. */
SELECT AVG(total) FROM invoice;

/* 8. */
SELECT SUM(total) FROM invoice;

/* 9. */
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

/* 10. */
DELETE 
FROM invoice
WHERE invoice_id = 1;