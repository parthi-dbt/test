with cte_customer as (

select c_address,
       C_NATIONKEY,
       C_ACCTBAL,
       C_MKTSEGMENT
       from {{source('customers','customer')}}
)
       select * from cte_customer