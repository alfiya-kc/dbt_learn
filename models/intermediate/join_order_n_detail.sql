with
orders as (
    select *
    from {{ ref('stg_northwind___order_') }}
),

orderdetails as (
    select *
    from {{ ref('stg_northwind__orderdetail') }}
)

select
    orders.*,
    orderdetails.productid,
    orderdetails.unitprice
    * orderdetails.quantity
    * (1 - orderdetails.discount) as total_revenue
from orders
left join orderdetails on orders.id = orderdetails.orderid
