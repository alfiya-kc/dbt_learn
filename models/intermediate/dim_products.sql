with products as (select * from {{ ref("stg_northwind__product") }})

select
    *,
    row_number() over (order by id desc) as product_sk
from products
