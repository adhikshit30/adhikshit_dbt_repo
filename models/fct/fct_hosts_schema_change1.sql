{{

    
        config(
            materialized='incremental',
            incremental_strategy= 'merge',
            unique_id = 'host_id',
            on_schema_change='append_new_column'
        )
    

}}

with cte_1 as

(

select 

* 

from 

{{ref('src_hosts')}}

)

select *  from cte_1

where 1=1

{% if is_incremental() %}

    and created_at >= TIMESTAMP_SUB(     CURRENT_TIMESTAMP(),     INTERVAL 1 DAY)

{% endif  %}

 