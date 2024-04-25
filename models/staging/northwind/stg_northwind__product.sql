with

source as (select * from {{ source("northwind", "product") }}),

renamed as (

    select
        id,
        productname,
        supplierid,
        categoryid,
        quantityperunit,
        unitprice,
        unitsinstock,
        unitsonorder,
        reorderlevel,
        discontinued

    from source

)

select *
from renamed
