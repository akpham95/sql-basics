/* 1.  Create a table called person that records a person’s id, name, age, height
(in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
 */ 

CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name varCHAR(200),
    age INTEGER,
    height INTEGER,
    city varCHAR(200),
    favorite_color varCHAR(200)
);

/* 2. Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
*/

INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Anthony Pham', 27, 175, 'Houston', 'Blue' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Charlie P', 22, 165, 'New York', 'Green' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Andy N', 27, 173, 'Houston', 'Red' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Taylor S', 28, 177, 'Los Angeles', 'Purple' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Travis S', 27, 178, 'Houston', 'Brown');

/* 3. Select all the people in the person table by height from tallest to shortest.
*/  SELECT * FROM person ORDER BY height DESC;


/* 4. Select all the people in the person table by height from shortest to tallest.
*/  SELECT * FROM person ORDER BY height ASC;


/* 5. Select all the people in the person table by age from oldest to youngest. 
*/  SELECT * FROM person ORDER BY age DESC;

/* 6. Select all the people in the person table older than age 20. 
*/  SELECT * FROM person WHERE age > 20;

/* 7. Select all the people in the person table that are exactly 18.
*/  SELECT * FROM person WHERE age = 18;

/* 8. Select all the people in the person table that are less than 20 and older than 30.
*/  SELECT * FROM PERSON WHERE age < 20 OR age > 30;

/* 9. Select all the people in the person table that are not 27 (use not equals).
*/  SELECT * FROM PERSON WHERE BY age != 27;

/* 10. Select all the people in the person table where their favorite color is not red.
*/  SELECT * FROM PERSON WHERE BY favorite_color != 'red';

/* 11. Select all the people in the person table where their favorite color is not red and is not blue.
*/  SELECT * FROM PERSON WHERE favorite_color != 'red' AND favorite_color != 'blue';

/* 12. Select all the people in the person table where their favorite color is orange or green.
*/  SELECT * FROM PERSON WHERE favorite_color = 'orange' OR favorite_color = 'green';

/* 13. Select all the people in the person table where their favorite color is orange, green or blue (use IN).
*/  SELECT * FROM PERSON WHERE favorite_color IN ( 'green', 'blue', 'green')

/* 14. Select all the people in the person table where their favorite color is yellow or purple (use IN).
*/  SELECT * FROM PERSON WHERE favorite_color IN ( 'yellow', 'purple')




