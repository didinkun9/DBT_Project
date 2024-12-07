-- dim_staff.sql
WITH raw_data AS (
    SELECT
        staff_id,
        first_name,
        last_name,
        address_id,
        email,
        store_id,
        active,
        username,
        password,
        last_update,
        picture
    FROM {{ ref('raw_staff') }}
)

SELECT
    staff_id,
    first_name,
    last_name,
    address_id,
    email,
    store_id,
    active,
    username,
    password,
    last_update,
    picture
FROM raw_data