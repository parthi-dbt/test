{{
    config(
        alias='as_order',
        materialized='incremental',
        unique_key='O_ORDERKEY',
        merge_update_columns=['O_CUSTKEY','O_ORDERSTATUS','O_TOTALPRICE','O_ORDERDATE','O_ORDERPRIORITY','O_CLERK','O_SHIPPRIORITY','O_COMMENT']
    )
}}
select * from {{source('order','orders')}}


