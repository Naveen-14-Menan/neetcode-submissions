select c.name
from customers c
where not exists (
    select o.customer_id
    from orders o
    where c.id = o.customer_id
)