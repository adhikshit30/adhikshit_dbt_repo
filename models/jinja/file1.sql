{% set my_host_id = [12,13,14] %}

select *
from {{ ref('dim_listings_w_hosts') }}
where host_id in (
    {% for id in my_host_id %}
        {{ id }}{% if not loop.last %},{% endif %}
    {% endfor %}
)