SELECT

    customer_id,

    INITCAP(customer_type) AS customer_type,

    LOWER(email) AS email,

    CASE
        WHEN age < 18 THEN NULL
        WHEN age > 120 THEN NULL
        ELSE age
    END AS age,

    INITCAP(gender) AS gender,

    total_purchases AS total_purchases

FROM {{ ref('stg_customer') }}
