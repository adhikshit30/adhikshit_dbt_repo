{% set my_host_id = 10 %}

{% if my_host_id < 10 %}

    select 2+3 as result

{% else %}

    select 12+13 as result

{% endif %}