select 
u.name,
coalesce( sum(r.distance),0) as travelled_distance
from users u 
Left join  rides r on  u.id =r.user_id
group by  u.id,u.name
order by travelled_distance desc , u.name