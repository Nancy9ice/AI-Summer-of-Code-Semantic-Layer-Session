SELECT 
    id as customer_id,
    email,
    CONCAT(first_name, ' ', last_name) as full_name,
    CAST(created_at AS TIMESTAMP_NTZ) as signup_date,
    plan as subscription_plan,
    source as traffic_source,
    seats,
    CAST(trial_ends_at AS TIMESTAMP_NTZ) as trial_end_date,
    CAST(canceled_at AS TIMESTAMP_NTZ) as cancellation_date,
    trial_converted,
    active_subscription,
    legacy_plan,
    country as country_code
FROM {{ source('dbt_semantic_layer', 'accounts') }}