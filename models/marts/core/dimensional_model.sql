with product as (
    select * from {{ ref('stg_product')}}
),
sales_data as (
    select * from {{ ref('stg_sales_data')}}
),

final as (
    select
        product.product_id,
        product.productgroup,
        product.productcategory,
        sales_data.orderdate,
        sales_data.order_id,
        sales_data.salesperson,
        sales_data.supervisor,
        sales_data.manager,
        sales_data.channel,
        sales_data.sales_amount
    from product
    join sales_data using (product_id)
)
select * from final