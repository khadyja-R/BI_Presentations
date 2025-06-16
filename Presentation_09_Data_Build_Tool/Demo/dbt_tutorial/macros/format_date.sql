{% macro format_date(column_name) %}
    date_trunc('day', {{ column_name }})
{% endmacro %}