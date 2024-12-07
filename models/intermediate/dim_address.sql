-- dim_address.sql
WITH raw_data AS (
    SELECT
        address_id,
        address,
        address2,
        district,
        city_id,
        postal_code,
        phone,
        last_update
    FROM {{ ref('raw_address') }}
)

SELECT
    address_id,
    address,
    address2,
    district,
    city_id,
    postal_code,
    phone,
    last_update
FROM raw_data
