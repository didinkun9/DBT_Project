-- dim_actor.sql
WITH raw_data AS (
    SELECT
        actor_id,
        first_name,
        last_name,
        last_update
    FROM {{ ref('raw_actor') }}
)

SELECT
    actor_id,
    first_name,
    last_name,
    -- Jika ada logika atau perubahan data lain yang diperlukan, dapat ditambahkan di sini.
    -- Misalnya, menggabungkan first_name dan last_name menjadi full_name.
    CONCAT(first_name, ' ', last_name) AS full_name,
    last_update
FROM raw_data
