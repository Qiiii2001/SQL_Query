-- Query for actors that last_name is 'Wahlberg' 
select last_name, count(last_name)
from actor
where last_name = 'Wahlberg'
group by last_name;

-- Count for payment that made between $3.99 and $5.99
select amount,count(amount) 
from payment
where amount > 3.99 and amount < 5.99
group by amount ;


-- Query for the movies that the store have the most
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

-- Count how many customer have the last name 'William'
select last_name, count(last_name)  
from customer
where last_name = 'William'
group by last_name
order by count(last_name) desc;

-- Get the staff_id that sold the most rental
select staff_id,count(rental_id)
from rental
group by staff_id 
order by count(rental_id) desc; 

-- Count how many dinstinct names in customer
select count(distinct first_name)
from customer;

-- Get the film that has the most actors in it
select film_id, 
count(actor_id) as count_actors
from film_actor
group by film_id 
order by count(actor_id) desc;

-- Find how many customers have the last name ending with 'es'
select last_name, count(last_name) 
from customer
where last_name like '%es' and store_id = 1
group by last_name; 

-- Count payment amount has a number of rentals that > 250 
-- for customers with id between 380 and 430
select customer_id, count(rental_id) 
from payment
where customer_id >= 380 and customer_id <= 430 and rental_id > 250
group by customer_id;

-- Find olut how many rating categories in film table 
-- and what rating has the most movies total
select rating, count(*) as num_movies
from film
group by rating
order by count(*) desc;



