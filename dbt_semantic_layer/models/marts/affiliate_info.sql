SELECT 
    affiliate_number,
    full_name,
    email,
    phone_number
FROM {{ source('dbt_semantic_layer', 'affiliate') }}