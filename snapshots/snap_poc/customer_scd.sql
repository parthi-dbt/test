{% snapshot customer_scd %}
{{
   config (
             alias='customer_scd',
             target_schema ='DBT_SNAPSHOT_POC',
             strategy='check',
             unique_key= 'C_CUSTKEY',
             check_cols =['C_ADDRESS','C_NATIONKEY','C_PHONE','C_ACCTBAL','C_MKTSEGMENT','C_COMMENT']
   )

}}

select *
from {{ source("customers", "customer") }}

{% endsnapshot %}
