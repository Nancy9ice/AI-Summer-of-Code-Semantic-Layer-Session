SELECT 
    id as invoice_id,
    account_id as customer_id,
    AVG(payment) as average_invoice_amount,
    SUM(payment) as total_invoice_amount,
    expected_invoice,
    plan as subscription_plan,
    CAST(date_received AS TIMESTAMP_NTZ) as invoice_date
FROM {{ source('dbt_semantic_layer', 'invoices') }}
GROUP BY id, account_id, expected_invoice, plan, date_received
