{{ config(materialized='table') }}

with days as (

    {{ dbt_utils.date_spine(
        datepart="day",
        start_date="to_date('2000-01-01','yyyy-mm-dd')",
        end_date="to_date('2030-01-01','yyyy-mm-dd')"
    ) }}

),

final as (
    select cast(date_day as date) as date_day
    from days
)

select *
from final
where date_day > dateadd(year, -4, current_date()) 
  and date_day < dateadd(day, 30, current_date())
