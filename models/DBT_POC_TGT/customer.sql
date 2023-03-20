{{
   config (
             alias='customer',
             materialized = 'incremental',
             unique_key= 'C_CUSTKEY',
             merge_update_columns =['C_ADDRESS','C_NATIONKEY','C_PHONE','C_ACCTBAL','C_MKTSEGMENT','C_COMMENT']
   )


}}

select * from {{source('customers','customer')}}