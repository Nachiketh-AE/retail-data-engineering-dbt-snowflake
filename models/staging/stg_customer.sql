SELECT
    customer_id,
    customer_type,
    email,
    age,
    gender,
    total_purchases
FROM {{ source('bronze', 'raw_customer') }}
