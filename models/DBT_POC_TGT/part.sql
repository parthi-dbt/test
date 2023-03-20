{{
    config(
        alias= 'as_part',
        materialized= 'incremental',
        unique_key= 'p_partkey',
        merge_update_columns= ['P_PARTKEY','P_NAME','P_MFGR','P_BRAND','P_TYPE','P_SIZE','P_CONTAINER','P_RETAILPRICE','P_COMMENT']
    )
}}
select * from {{source('as_part','part')}}


