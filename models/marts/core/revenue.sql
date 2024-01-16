select 
        count (distinct  order_id) as Total_Orders,
        sum(sales_amount) as Revenue,
        sum(sales_amount) / count(distinct order_id) as Avg_Revenue_Per_Order

from {{ ref('stg_sales_data') }}


