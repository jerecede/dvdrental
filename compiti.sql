-- 1

select concat_ws(' ', c.first_name, c.last_name) as full_name, count(r.rental_id) as times_movie_rented
from customer as c
join rental as r on r.customer_id = c.customer_id
group by c.customer_id
order by times_movie_rented DESC

-- 2

select f.title, sum(p.amount) as total_profit
from payment as p
join rental as r on r.rental_id = p.rental_id
join inventory as i on i.inventory_id = r.inventory_id
join film as f on f.film_id = i.film_id
group by f.film_id
order by total_profit desc

-- 3

-- 4

SELECT country, count(id) as tot_customers
FROM customer_list
group by country
order by tot_customers desc
