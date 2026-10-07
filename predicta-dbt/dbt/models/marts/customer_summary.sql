SELECT
    customer_id,
    customer_name,
    email,
    COUNT(order_id) AS total_orders,
    SUM(amount) AS total_spend,
    AVG(amount) AS average_order_value,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date

FROM {{ ref('int_customer_orders') }}

GROUP BY
    customer_id,
    customer_name,
    email
