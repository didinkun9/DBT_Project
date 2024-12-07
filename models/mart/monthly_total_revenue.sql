SELECT DATE_TRUNC('month',p.payment_date) AS payment_month, 
SUM(p.amount) AS total_revenue FROM {{ref('fact_payment') }} p
GROUP BY payment_month ORDER BY payment_month