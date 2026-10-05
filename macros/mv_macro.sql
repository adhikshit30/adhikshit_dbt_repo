{% macro mv_macro() %}
    {% set sql %}
        create materialized view if not exists
            `{{ target.project }}.{{ target.dataset }}.adhikshit_materialized_view`
            as 
            select * from {{ref('src_hosts')}}

    {% endset %}

    {% if execute %}
        {{log('This is my mv', info=True)}}
        {% do run_query(sql) %}
        {{log('Created mv successfully...', info=True)}}
    {% endif %}

{% endmacro %}