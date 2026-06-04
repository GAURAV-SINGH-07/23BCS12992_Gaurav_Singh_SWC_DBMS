select sub_id as post_id,
(
	select count(distinct(s1.sub_id)) 
	from 
	submissions s1 
	where s1.parent_id=s.sub_id
) as number_of_comments
from
submissions s
where 
parent_id is null 
group by 
post_id
