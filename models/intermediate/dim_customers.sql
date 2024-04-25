with customers as (select * from {{ ref("stg_northwind__customer") }})

select
    *,
    row_number() over (order by id desc) as customer_sk
from customers
