{{
    config(
        materialized='table',

        pre_hook="select 'starting execution of model...' as message",

        post_hook="select 'finished execution of model...' as message"
    )
}}

with cte_1 as (

    select *
    from {{ ref('src_hosts') }}
    where is_superhost is not null

)

select
    host_id,
    coalesce(host_name, 'Anonymous') as host_name,
    is_superhost,
    created_at,
    updated_at
from cte_1