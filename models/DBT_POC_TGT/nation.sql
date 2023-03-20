{{
    config(
        alias='as_nation',
        materialized='incremental',
        unique_key='N_NATIONKEY',
        merge_update_columns=['N_NATIONKEY','N_NAME','N_REGIONKEY','N_COMMENT']
    )

}}

select * FROM {{source('poc_nation','nation')}}
