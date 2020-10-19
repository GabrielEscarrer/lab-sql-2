	#1 Select all the actors with the first name ‘Scarlett’.
Select * from sakila.actor
where first_name = "Scarlett"; 

	#2 Select all the actors with the last name ‘Johansson’.
Select * from sakila.actor
where last_name = "Johansson";

	#3 How many films (movies) are available for rent?
select count(inventory_id) as "available movies"
from sakila.rental;

	#4 How many films have been rented?
select count(rental_date) as "number of movies rented"
from sakila.rental;

	#5 What is the shortest and longest rental period?
select  max(return_date - rental_date) as "longest rental period", min(return_date - rental_date) as "shortest rental period"
from sakila.rental;

	#6 What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as "max_duration", min(length) as "min_duration" 
from sakila.film;

	#7 What's the average movie duration?
select round(avg(length))  as "avg_length"
from sakila.film;

	#8 What's the average movie duration expressed in format (hours, minutes)!!!!


	#9 How many movies longer than 3 hours?
select title, length
from sakila.film
where length > ("180");

	#10 Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select first_name, email
from sakila.customer;

	#11 What's the length of the longest film title?
Select title from sakila.film
order by length(title) DESC
limit 1; 