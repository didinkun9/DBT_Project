-- fact_payment.sql
WITH raw_data AS (
    SELECT
        payment_id,
        customer_id,
        staff_id,
        rental_id,
        amount,
        payment_date
    FROM {{ ref('raw_payment') }}
)

SELECT
    p.payment_id,
    p.customer_id,
    p.staff_id,
    p.rental_id,
    i.inventory_id,
    f.film_id,
    p.amount,
    p.payment_date
FROM raw_data p
LEFT JOIN {{ ref('dim_rental') }} r ON p.rental_id = r.rental_id
LEFT JOIN {{ ref('dim_inventory') }} i ON r.inventory_id = i.inventory_id
LEFT JOIN  {{ ref('dim_film') }} f ON i.film_id = f.film_id
