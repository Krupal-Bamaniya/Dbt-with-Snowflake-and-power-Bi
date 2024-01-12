select 
      orderdate,
      ordernumber as order_id,
      productkey as product_id,
      salespersonkey as salesperson_id,
      salesperson,
      supervisor,
      manager,
      channel,
      quantity,
      unitprice,
      (quantity * unitprice) as sales_amount

from {{ source('jaffle_shop', 'sales_data') }}
