with payments as (
    select 
    id as payment_id,
    orderid,
    paymentmethod,
    status,
    amount, 
    created
    from dbt_db.stripe.payment
    )
    select * from payments

