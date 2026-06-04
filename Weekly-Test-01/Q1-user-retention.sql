select distinct extract(MONTH from u.event_date) as mth,count(*)+1 as monthly_active_users
from
user_actions u 
where 
extract(MONTH from u.event_date)=7
and u.user_id in 
(
  select u2.user_id
  from 
  user_actions u2
  where 
  extract(month from u2.event_date)=6
)
group by 
u.event_date
