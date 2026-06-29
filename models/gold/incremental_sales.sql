-- noqa: RF02

{{ config(
    materialized='incremental',
    unique_key='transaction_id',
    incremental_strategy='merge'
) }}

SELECT
    o.transaction_id,
    o.customer_id,
    o.product_id,
    o.quantity,
    o.total_amount,
    o.transaction_date
FROM {{ ref('orders') }} AS o

{% if is_incremental() %}

    WHERE o.transaction_date > (
        SELECT COALESCE(MAX(t.transaction_date), '1900-01-01')
        FROM {{ this }} AS t
    )

{% endif %}
