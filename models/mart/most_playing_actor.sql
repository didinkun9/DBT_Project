SELECT a.actor_id, a.first_name || ' ' || a.last_name AS actor_name,
COUNT(fa.film_id) AS num_films_played
FROM {{ref('dim_film_actor')}} fa 
LEFT JOIN {{ref('dim_actor') }} a ON fa.actor_id = a.actor_id
GROUP BY a.actor_id, actor_name
ORDER BY num_films_played DESC LIMIT 10