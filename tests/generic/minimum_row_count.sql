{% test minimum_row_count(model, min_row_count) %}

    select
    count(*)
    as cnt
    from 
    {{model}}
    having 
    count(*) < {{100}}
{% endtest %}