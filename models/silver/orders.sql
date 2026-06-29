SELECT

    transaction_id,

    customer_id,

    product_id,

    quantity,

    total_amount,

    transaction_date

FROM {{ ref('stg_orders') }}

WHERE transaction_date IS NOT NULL
