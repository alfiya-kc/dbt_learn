with

source as (select * from {{ source("northwind", "orderdetail") }}),

renamed as (

    select
id,
orderid,
productid,
unitprice,
quantity,
discount
from source

)

select *
from renamed
