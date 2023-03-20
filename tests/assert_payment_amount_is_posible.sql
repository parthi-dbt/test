with cust as (
    select * from {{ref('customer_test')}}
    )
    select 
    sum(C_NATIONKEY) as total_amount
    from cust
    group by C_CUSTKEY
    having total_amount < 0


