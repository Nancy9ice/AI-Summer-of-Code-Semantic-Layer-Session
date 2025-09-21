SELECT
    id as review_id,
    product_id,
    reviewer,
    rating,
    body,
    CAST(created_at AS TIMESTAMP_NTZ) as review_date
FROM {{ source('dbt_semantic_layer', 'reviews') }}