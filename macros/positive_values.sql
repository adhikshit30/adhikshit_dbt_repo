{% macro positive_value(model, column_name ) %}
    SELECT 
    *
    FROM
    {{model}}
    where
    {{column_name}} > 0

{% endmacro %}