SELECT
    transaction_id,
    customer_id,
    product_id,
    quantity,
    total_amount,
    transaction_date
FROM {{ source('bronze', 'raw_orders') }}
