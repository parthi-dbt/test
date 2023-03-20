{{
   config (
             alias='LINEITEM',
             materialized = 'incremental',
             unique_key= 'L_ORDERKEY',
             merge_update_columns =['L_RETURNFLAG','L_LINESTATUS','L_SHIPDATE','L_COMMITDATE','L_RECEIPTDATE','L_SHIPINSTRUCT','L_SHIPMODE']
   )


}}

select * from {{source('poc','LINEITEM')}}