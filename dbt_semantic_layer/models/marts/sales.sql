SELECT 
    id as order_id,
    user_id as customer_id,
    product_id,
    AVG(subtotal) as avg_amount_before_tax,
    SUM(subtotal) as total_amount_before_tax,
    AVG(tax) as avg_tax,
    SUM(tax) as total_tax,
    AVG(total) as avg_amount_after_tax,
    SUM(total) as total_amount_after_tax,
    AVG(discount) as discount_amount_average,
    SUM(discount) as discount_amount_total,
    AVG(quantity) as avg_quantity,
    SUM(quantity) as total_quantity,
    CAST(created_at AS TIMESTAMP_NTZ) as order_date
FROM {{ source('dbt_semantic_layer', 'orders') }}
GROUP BY id, user_id, product_id, created_at