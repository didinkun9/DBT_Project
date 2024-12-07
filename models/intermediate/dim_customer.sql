-- dim_customer.sql
WITH raw_data AS (
    SELECT
        customer_id,
        store_id,
        first_name,
        last_name,
        email,
        address_id,
        activebool,
        create_date,
        last_update,
        active
    FROM {{ ref('raw_customer') }}
)

SELECT
    customer_id,
    store_id,
    first_name,
    last_name,
    -- Jika ada logika atau perubahan data lain yang diperlukan, dapat ditambahkan di sini.
    -- Misalnya, menggabungkan first_name dan last_name menjadi full_name.
    CONCAT(first_name, ' ', last_name) AS full_name,
    email,
    address_id,
    activebool,
    create_date,
    last_update
FROM raw_data
