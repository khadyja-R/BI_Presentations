with orders as (
    select
        o.order_id,
        o.customer_id,
        o.order_date,
        o.status,
        p.total_amount
    from {{ ref('stg_orders') }} o
    left join {{ ref('int_payments_summary') }} p
        on o.order_id = p.order_id
)

select *
from orders
