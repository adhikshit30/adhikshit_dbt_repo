{% set countries = ['USA', 'UK', 'India', 'China'] %}

select
{% for country in countries %}
    '{{ country }}' as country_{{ loop.index }}
    {% if not loop.last %},{% endif %}
{% endfor %}