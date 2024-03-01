{% macro select_temp() %}   
    {% set query %}
SELECT
    *
FROM
    {{ source(
        'audit',
        'control_table'
    ) }}
WHERE
    table_name = '{{ this.table }}' 
    {% endset %}

    {% set result = run_query(query) %}

    {% if execute %}
        {{ return (result) }}
    {% endif %}

{% endmacro %}