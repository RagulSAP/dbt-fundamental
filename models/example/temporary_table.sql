{{ 
    config
    (
     materialized='table',
     database='our_first_db',
     schema='dev',
     post_hook = "{{drop_table(database,schema,'temporary_table')}}" )
}}

with source_data as (

    select * from snowflake_sample_data.tpch_sf1.customer limit 10

)

select * from source_data

