-- Assignment Questions

-- Q 1.) Identify the primary keys and foreign keys in maven movies db. Discuss the differences?
-- Answer:
-- A primary key is constraints or set of rules that uniquely identify each records of a column within the table.
-- A foreign key is a refrential key of same table or another table, that uniquely identify each records of a column within the table.

show tables;
describe actor;
-- actor_id is primary key and last_name is foreign key

describe actor_award;
-- actor_award_id is Primary key and last_name is foreign key.

describe address;
-- address_id is primary key and city_id is foreign key.

describe advisor;
-- advisor_id is primary key.

describe category;
-- categrory_id is primary key.

describe city;
-- city_id is primary key and country_id is foreign key.

describe country;
-- country_id is primary key.

describe customer;
-- customere_id is primary key and sore_id, last_name and address_id are foreign key. 

describe film;
-- film_id is primary key and title, language_id and original_language_id is foreign key. 

describe film_actor;
-- actor_id and film_id both are primary key. 

describe film_category;
-- film_id and categry_id both are primary key. 

describe film_text;
-- film_id is primary key and title is foreign key. 

describe inventory;
-- inventory_id is primary key and film_id, store_id is foreign key. 
 
describe investor;
-- investor_id is primary key

describe language;
-- language_id is primary key.

describe payment;
-- payment_id is primary key and customer_id, staff_id, rental_id are foreign key. 

describe rental;
-- rental_id is primary key and rental_date, inventory_id, customer_id and staff_id are foreign key. 

describe staff;
-- staff_id is primary key and address_id and store_id are foreign key. 

describe store;
-- store_id is primary key and address_id is foreign key.  

-- Q 2. List all details of actor?
select*from actor;

-- 3. List all customer information from DB.
select*from customer;

-- 4. List different countries.
select distinct country from country;

-- 5. Display all active customers.
select first_name, last_name, active from customer;

-- 6. List of all rental IDs for customer with ID 1.
select rental_id from rental where customer_id = 1;

-- 7. Display all the films whose rental duration is greater than 5.
select title, description from film where rental_duration >5;

-- 8. List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*) from film where replacemetn_cost >15 and replacement_cost <20;

-- 9. Display the count of unique first names of actors.
select distinct count(first_name) from actor;

-- 10. Display the first 10 records from the customer table.
select*from customer limit 10;

-- 11. Display the first 3 records from the customer table whose first name starts with 'b'.
select*from customer where first_name like "b%" limit 3;

-- 12. Display the names of the first 5 movies which are rated as 'G'.
select title, description from film where rating='G' limit 5;

-- 13. Find all customers whose first name starts with "a".
select * from customer where first_name like "a%";

-- 14. Find all customers whose first name ends with "a".
select * from customer where first_name like "%a" ;

-- 15. Display the list of first 4 cities which start and end with 'a'.
select * from city where city like "a%a" limit 4;

-- 16. Find all customers whose first name have "NI" in any position.
select * from customer where first_name like "%NI%" ;

-- 17. Find all customers whose first name have "r" in the second position.
select * from customer where first_name like "_r%" ;

-- 18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from customer where first_name like "a____";

-- 19. Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name like "a%o";

-- 20. Get the films with pg and pg-13 rating using IN operator.
select * from film where rating = "PG" and rating = "PG-13";

-- 21. Get the films with length between 50 to 100 using between operator.
select * from film where length between "50" and "100" ;

-- 22. Get the top 50 actors using limit operator.
select * from actor limit 50;

-- 23. Get the distinct film ids from inventory table.
select distinct(film_id) from inventory;