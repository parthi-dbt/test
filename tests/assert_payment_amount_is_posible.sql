with payments as (
    select * from {{ref('tab_stg_strip')}}
    )
    select 
    orderid,
    sum(amount) as total_amount
    from payments
    group by orderid
    having total_amount < 0
