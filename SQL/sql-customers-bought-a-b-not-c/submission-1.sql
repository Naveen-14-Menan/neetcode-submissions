with product_listed_customer as (
select 
    STRING_AGG(distinct product_name, ',' order by product_name) as product_list,
    customer_id
from orders
group by customer_id
)
select 
p.customer_id, c.customer_name 
from product_listed_customer p
join customers c on p.customer_id = c.customer_id
and p.product_list not like '%C%' and p.product_list like 'A,B%'
order by c.customer_name 
;