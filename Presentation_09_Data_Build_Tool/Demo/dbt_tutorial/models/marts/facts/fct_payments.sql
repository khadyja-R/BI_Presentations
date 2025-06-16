select
    order_id,
    payment_method,
    sum(amount) as total_payment_amount,
    count(payment_id) as number_of_payments
from {{ ref('stg_payments') }}
group by order_id, payment_method