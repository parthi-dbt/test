with payments as (
    select 
    id as payment_id,
    orderid,
    paymentmethod,
    status,
    amount, 
    created
    from  RAW.STRIPE.payment
    )
    select * from payments

