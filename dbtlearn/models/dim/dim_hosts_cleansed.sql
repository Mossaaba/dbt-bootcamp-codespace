{{
config(
materialized = 'view'
)
}}

with src_hosts AS (

    select * from 
    {{ ref('src_hosts') }}
)
select 
host_id, 
NVL (
    host_name, 
    'Anonymos'
) as host_name, 
is_superhost, 
created_at, 
updated_at

from src_hosts