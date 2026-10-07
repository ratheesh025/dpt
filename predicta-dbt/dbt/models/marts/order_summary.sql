SELECT
    order_date,
    COUNT(order_id) AS total_orders,
    SUM(amount) AS total_revenue,
    AVG(amount) AS average_order_value,
    COUNTIf(status = 'completed') AS completed_orders,
    COUNTIf(status = 'cancelled') AS cancelled_orders

FROM {{ ref('stg_orders') }}

GROUP BY order_date
