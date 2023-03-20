{% snapshot nation_scd %}
{{
   config (
             alias='nation_scd',
             target_schema ='DBT_SNAPSHOT_POC',
             strategy='check',
             unique_key= 'N_NATIONKEY',
             check_cols =['N_NATIONKEY','N_NAME','N_REGIONKEY','N_COMMENT']
   )

}}

select *
from {{ source("poc_nation", "nation") }}

{% endsnapshot %}
