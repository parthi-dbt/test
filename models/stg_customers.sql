with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from dbt_db.dbt_schema.customers

)
select * from customers