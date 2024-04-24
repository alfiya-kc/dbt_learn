with

    source as (select * from {{ source("northwind", "customer") }}),

    renamed as (

        select
            id,
            companyname,
            contactname,
            contacttitle,
            address,
            city,
            region,
            postalcode,
            country,
            phone,
            fax

        from source

    )

select *
from renamed
