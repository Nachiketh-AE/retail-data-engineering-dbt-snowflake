SELECT
    product_id,
    name,
    INITCAP(category) AS category,
    TRY_TO_DECIMAL(price, 10, 2) AS price,
    stock_quantity AS stock_quantity,
    rating
FROM {{ ref('stg_product') }}