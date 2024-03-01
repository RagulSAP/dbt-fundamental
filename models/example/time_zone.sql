{{
    config 
    (
       materialized='table',
       database='our_first_db',
       schema='dev',
       transient=false
    )    

}}

With curated_timestamp AS (


    select 
    id as id,
    {{ dbt_date.convert_timezone(""MY_TIMESTAMP"", ""America/New_York"", ""UTC"") }} as converted_timestamp
    from {{source('example','time_zone')}}
)

select * from curated_timestamp










"
