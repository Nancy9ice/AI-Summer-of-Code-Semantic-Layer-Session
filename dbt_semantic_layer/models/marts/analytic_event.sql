SELECT 
    id as affiliate_id,
    account_id as customer_id,
    event,
    timestamp,
    page_url,
    button_label
FROM {{ source('dbt_semantic_layer', 'analytic_events') }}