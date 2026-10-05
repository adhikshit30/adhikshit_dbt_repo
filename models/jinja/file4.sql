{% set countries = ['USA', 'UK', 'India', 'China'] %}

{% for country in countries %}

    '{{ country }}'
    {{ 1 + 1 }}

{% endfor %}