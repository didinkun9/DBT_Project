-- dim_inventory.sql
WITH raw_data AS (
    SELECT
        inventory_id,
        film_id,
        store_id,
        last_update
    FROM {{ ref('raw_inventory') }}
)

SELECT
    inventory_id,
    film_id,
    store_id,
    last_update
FROM raw_data
