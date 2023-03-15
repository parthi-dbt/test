with payments as (
    select 
    id as payment_id,
    orderid,
    paymentmethod,
    status,
    amount, 
    created
    from  {{source('strip','payment')}} -- raw.stripe.payment
    )
    select * from payments

