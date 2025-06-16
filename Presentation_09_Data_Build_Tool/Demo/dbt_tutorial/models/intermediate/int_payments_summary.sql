with payments_summary as (
    select
        order_id,
        sum(amount) as total_amount,
        count(payment_id) as number_of_payments
    from {{ ref('stg_payments') }}
    group by order_id
)

select *
from payments_summary
