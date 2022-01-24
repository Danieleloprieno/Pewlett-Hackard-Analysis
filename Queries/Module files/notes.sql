SELECT * from film;

-- assignment 01 loading data
SELECT COUNT (film_id) FROM film;

SELECT COUNT (film_id) AS "Total films"
FROM film;

SELECT rating, COUNT(film_id) AS "Total films"
FROM film
GROUP BY rating;

SELECT AVG(rental_duration)
FROm film;

SELECT AVG(rental_duration) AS "Average rental period"
FROm film;


-- assignment 03 gregarious aggregates

-- 1. What is the average cost to rent a film in the Sakila stores?

select * FROM film

SELECT AVG(rental_rate)
FROM film

-- 2.98

-- 2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? Most expensive?
SELECT rating, AVG(rental_rate)
FROM film
GROUP BY rating;

-- cheapest - G (2.88), most expensive PG (3.05)

-- 3. How much would it cost to replace all the films in the database?

SELECT SUM(replacement_cost)
FROM film;

-- 19984.00

-- 4. How much would it cost to replace all the films in each ratings category?
SELECT rating, SUM(replacement_cost)
FROM film
GROUP BY rating;

-- 5. How long is the longest movie in the database? The shortest?
SELECT MAX(length)
FROM film; 

SELECT MIN(length)
FROM film;

-- longest is 185, shortest is 46

-- Assignment 05

-- Select count of actors first names in descending order
SELECT * FROM film

SELECT first_name, COUNT (first_name)
FROM actor
GROUP BY first_name
ORDER BY first_name DESC

-- Select the average duration of movies by rating
SELECT rating, AVG (rental_duration)
FROM film
GROUP BY rating
ORDER BY rating;

-- Select top ten replace costs for the length of the movie
SELECT replacement_cost
FROM film
GROUP BY 

-- Select the count of countries



