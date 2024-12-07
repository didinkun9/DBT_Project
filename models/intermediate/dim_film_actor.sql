-- dim_film_actor.sql
WITH raw_data AS (
    SELECT
        actor_id,
        film_id,
        last_update
    FROM {{ ref('raw_film_actor') }}
)

SELECT
    actor_id,
    film_id,
    last_update
FROM raw_data
