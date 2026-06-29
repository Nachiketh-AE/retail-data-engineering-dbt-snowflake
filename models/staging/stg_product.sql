SELECT
    product_id,
    name,
    category,
    price,
    stock_quantity,
    rating
FROM {{ source('bronze', 'raw_product') }}
