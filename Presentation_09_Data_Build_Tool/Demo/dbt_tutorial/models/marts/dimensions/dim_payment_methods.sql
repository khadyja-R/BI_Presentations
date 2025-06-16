select distinct
    payment_method,
    case payment_method
        when 'credit_card' then 'Credit Card'
        when 'bank_transfer' then 'Bank Transfer'
        when 'coupon' then 'Coupon'
        else 'Other'
    end as payment_method_desc
from {{ ref('stg_payments') }}
