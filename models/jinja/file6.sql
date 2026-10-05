'{{ target.project }}'
'{{ target.dataset }}'
'{{ target.type }}'

{% set my_host_id = 9 %}

{% if target.project == 'racko-master-project-505113' %}

    SELECT 2+3

{% elif target.project == 'abc' %}

    SELECT 12+13

{% else %}

    SELECT 0

{% endif %}

{% set results = run_query(
    "select count(*) from tredence_adhikshit.src_hosts"
) %}

{% set rowcount = results.columns[0].values()[0] %}

{{ log("rowcount = " ~ rowcount, info=True) }}