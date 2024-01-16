select 
    id as product_id,
    productname,
    productgroup,
    productcategory

from {{ source('jaffle_shop', 'product') }}
