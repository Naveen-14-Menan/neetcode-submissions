select 
seller_name
from seller 
where seller_id not in (
    select seller_id from orders 
    where DATE_PART('YEAR',sale_date) = 2020
)
order by seller_name 