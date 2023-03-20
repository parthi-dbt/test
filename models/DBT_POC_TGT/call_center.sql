{{
    config(
        alias= 'as_call_center',
        materialized= 'incremental',
        unique_key='CC_CALL_CENTER_SK',
        merge_update_columns= ['CC_CALL_CENTER_SK']

    )
}}
select * from {{source('as_call_center','call_center')}}