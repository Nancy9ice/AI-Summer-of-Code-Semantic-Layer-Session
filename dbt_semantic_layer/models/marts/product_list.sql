SELECT 
    id as product_id,
    ean,
    title as product_name,
    category as product_category,
    vendor,
    price,
    rating,
    CAST(created_at AS TIMESTAMP_NTZ) as product_created_at
FROM {{ source('dbt_semantic_layer', 'products') }}