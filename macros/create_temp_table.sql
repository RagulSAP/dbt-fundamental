{%- macro create_external_table()  -%}
 {% set create_table %}
  create or replace table `dataset.table`(
      Id STRING NOT NULL,
      FirstName STRING NOT NULL,
      LastName STRING NOT NULL
  )
  {% endset %}

  {% do run_query(create_table) %}
{%- endmacro -%}