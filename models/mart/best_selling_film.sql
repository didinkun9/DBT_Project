SELECT f.film_id, f.title AS film_title, COUNT(p.payment_id) AS sales FROM {{ref('fact_payment') }} p 
LEFT JOIN {{ ref('dim_film')}} f ON p.film_id = f.film_id 
GROUP BY f.film_id, film_title ORDER BY sales DESC LIMIT 10