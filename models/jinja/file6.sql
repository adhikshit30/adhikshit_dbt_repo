{% if execute %}

    {% set results = run_query(
        "select count(*) from " ~ target.dataset ~ ".src_hosts"
    ) %}

    {% if results is not none %}
        {% set rowcount = results.columns[0].values()[0] %}
        {{ log("rowcount = " ~ rowcount, info=True) }}
    {% endif %}

{% endif %}

select
    '{{ target.project }}' as project_name,
    '{{ target.dataset }}' as dataset_name,
    '{{ target.type }}' as adapter_type