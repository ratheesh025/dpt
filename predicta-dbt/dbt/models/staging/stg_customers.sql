SELECT
    id AS customer_id,
    name AS customer_name,
    email,
    created_at
FROM {{ source('raw', 'customers') }}
