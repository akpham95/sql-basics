/* 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
*/

CREATE TABLE orders ( 
    orders_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity integer, );

/* 2. Add 5 orders to the orders table.
    A. Make orders for at least two different people.

    B. person_id should be different for different people.
*/

INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (0, 'Product1', 12.50, 2);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (0, 'Product2', 10, 1);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (0, 'Product3', 5, 3);

INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (1, 'Product1', 12.50, 1);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (1, 'Product2', 10, 2);

/* 3.Select all the records from the orders table. 
*/ SELECT * FROM orders;

/* 4.Calculate the total number of products ordered.
*/ SELECT SUM(quantity) FROM orders;

/* 5. Calculate the total order price.
*/ SELECT SUM(product_price * quanity) FROM orders;

/* 6. Calculate the total order price by a single person_id.
*/ SELECT SUM(product_price * quanity) FROM orders WHERE person_id = 0;




