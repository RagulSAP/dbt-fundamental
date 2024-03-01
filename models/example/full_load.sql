{{ config(materialized='table') }}

with source_data as (

    select * from snowflake_sample_data.tpch_sf1.customer limit 10

)

select * from source_data
