{% macro drop_table(database,schema,table_name) %}
{% set drop_query %}
drop table {{database}}.{{schema}}.{{table_name}}
 
{% endset  %}
    {% do run_query(drop_query) %}
{%  endmacro %}